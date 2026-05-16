class HomeController < ApplicationController
  def index
    set_meta_tags(
      title: 'Ruby on Rails Development & Consulting | Dallas-Fort Worth, Texas',
      description: 'Leading Ruby on Rails development and consulting company serving Dallas, Fort Worth, and the DFW metroplex. Custom Rails solutions, migrations, maintenance, and staff augmentation for Texas businesses.',
      keywords: 'Dallas Rails development, Fort Worth Rails consulting, DFW Ruby on Rails, Texas Rails company, Dallas web development, Fort Worth software development, DFW Rails experts, Texas Rails consultants',
      og: {
        title: 'RailsHouse - Premier Ruby on Rails Consulting in Dallas-Fort Worth',
        description: 'Expert Ruby on Rails development and consulting services for businesses in Dallas, Fort Worth, and throughout Texas. 20+ years of excellence.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      },
      twitter: {
        card: 'summary_large_image',
        title: 'RailsHouse - Dallas-Fort Worth Rails Development',
        description: 'Premier Ruby on Rails consulting serving the DFW metroplex and Texas region.',
        image: "#{request.base_url}/icon.png"
      }
    )
  end
end
