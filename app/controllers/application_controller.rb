class ApplicationController < ActionController::Base
  before_action :set_default_meta_tags
  
  private
  
  def set_default_meta_tags
    set_meta_tags(
      site: 'RailsHouse',
      title: 'Ruby on Rails Development & Consulting | Dallas-Fort Worth, Texas',
      reverse: true,
      separator: '|',
      description: 'RailsHouse is a Fort Worth, Texas based Ruby on Rails consultancy firm providing expert RoR development, migration, staffing, maintenance and support services in Dallas-Fort Worth and across Texas.',
      keywords: 'Ruby on Rails, RoR, Rails Consulting, Rails Development, Ruby Development, Web Application Development, Rails Migration, Rails Maintenance, Rails Support, Dallas Rails, Fort Worth Rails, Texas Rails Company, DFW Rails Development',
      canonical: request.original_url,
      og: {
        title: :title,
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png",
        description: :description,
        site_name: 'RailsHouse'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@railshouse',
        title: :title,
        description: :description,
        image: "#{request.base_url}/icon.png"
      }
    )
  end
end
