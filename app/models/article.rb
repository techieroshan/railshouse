class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :published_at, presence: true
  
  # Categories available for articles
  CATEGORIES = [
    'Articles on Management',
    'Hybrid App',
    'Industry Insights',
    'Jobs',
    'Mobile App',
    'Mobile Application Development',
    'Mobile Marketing',
    'Native App',
    'News',
    'Rails 3',
    'Rails Upgrades',
    'ROR',
    'Technical Articles',
    'Uncategorized',
    'Web App'
  ].freeze
  
  validates :category, inclusion: { in: CATEGORIES, allow_nil: true }
  
  # Scopes for filtering
  scope :by_category, ->(category) { category.present? ? where(category: category) : all }
  scope :by_month, lambda { |year, month|
    y = year.to_i
    m = month.to_i

    if y.positive? && (1..12).cover?(m)
      start_date = Time.zone.local(y, m, 1).beginning_of_month
      where(published_at: start_date..start_date.end_of_month)
    else
      none
    end
  }
  scope :by_year, lambda { |year|
    y = year.to_i

    if y.positive?
      start_date = Time.zone.local(y, 1, 1).beginning_of_year
      where(published_at: start_date..start_date.end_of_year)
    else
      none
    end
  }
  scope :published, -> { where('published_at <= ?', Time.current).order(published_at: :desc) }
  
  # Get unique categories used in articles
  def self.used_categories
    where.not(category: [nil, '']).distinct.pluck(:category).sort
  end
  
  # Get archive months
  def self.archive_months
    where.not(published_at: nil)
      .pluck(:published_at)
      .map { |published_at| published_at.in_time_zone.beginning_of_month }
      .uniq
      .sort
      .reverse
      .map do |month_start|
        {
          year: month_start.year.to_s,
          month: format('%02d', month_start.month),
          year_month: month_start.strftime('%Y-%m')
        }
      end
  end
end
