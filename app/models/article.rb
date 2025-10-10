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
    'ROR',
    'Technical Articles',
    'Uncategorized',
    'Web App'
  ].freeze
  
  validates :category, inclusion: { in: CATEGORIES, allow_nil: true }
  
  # Scopes for filtering
  scope :by_category, ->(category) { where(category: category) if category.present? }
  scope :by_month, ->(year, month) { where('strftime("%Y", published_at) = ? AND strftime("%m", published_at) = ?', year.to_s, month.to_s.rjust(2, '0')) }
  scope :by_year, ->(year) { where('strftime("%Y", published_at) = ?', year.to_s) }
  scope :published, -> { where('published_at <= ?', Time.current).order(published_at: :desc) }
  
  # Get unique categories used in articles
  def self.used_categories
    where.not(category: nil).select(:category).distinct.pluck(:category).sort
  end
  
  # Get archive months
  def self.archive_months
    select("strftime('%Y', published_at) as year, strftime('%m', published_at) as month, strftime('%Y-%m', published_at) as year_month")
      .where.not(published_at: nil)
      .group("year_month")
      .order("year_month DESC")
      .map { |a| { year: a.year, month: a.month, year_month: a.year_month } }
      .uniq { |h| h[:year_month] }
  end
end
