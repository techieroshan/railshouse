class ContactController < ApplicationController
  def index
    set_meta_tags(
      title: 'Contact Us - Ruby on Rails Consulting | Dallas-Fort Worth, Texas',
      description: 'Get in touch with RailsHouse for Ruby on Rails development and consulting services in Dallas, Fort Worth, and throughout Texas. Located at 1320 Pepperhill Ln, Fort Worth, TX 76131.',
      keywords: 'contact Rails consultant Dallas, Fort Worth Rails company contact, DFW Rails development inquiry, Texas Rails consulting contact',
      og: {
        title: 'Contact RailsHouse - Dallas-Fort Worth Rails Experts',
        description: 'Reach out to our team in Fort Worth, Texas for expert Ruby on Rails consulting and development services.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      }
    )
  end
end
