class CompanyController < ApplicationController
  def index
    set_meta_tags(
      title: 'About RailsHouse - Ruby on Rails Consulting | Fort Worth, Texas',
      description: 'Learn about RailsHouse, a Fort Worth, Texas based Ruby on Rails consulting company serving the Dallas-Fort Worth metroplex with expert Rails development and consulting services since 2009.',
      keywords: 'about RailsHouse, Fort Worth Rails company, Dallas Rails consultants, Texas Rails experts, DFW Ruby development company',
      og: {
        title: 'About RailsHouse - Premier Rails Consulting in Dallas-Fort Worth',
        description: 'Fort Worth-based Ruby on Rails consulting division of Cogdina Inc, serving the DFW metroplex and beyond since 2009.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      }
    )
  end

  def team
    set_meta_tags(
      title: 'Our Team - RailsHouse Ruby on Rails Experts | Dallas-Fort Worth',
      description: 'Meet the RailsHouse team - experienced Ruby on Rails developers and consultants based in Fort Worth, Texas, serving businesses throughout the DFW metroplex.',
      keywords: 'RailsHouse team, Fort Worth Rails developers, Dallas Rails consultants, Texas Rails experts',
      og: {
        title: 'RailsHouse Team - Dallas-Fort Worth Rails Experts',
        description: 'Meet our team of experienced Ruby on Rails professionals based in Fort Worth, Texas.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      }
    )
  end
end
