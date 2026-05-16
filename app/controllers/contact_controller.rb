class ContactController < ApplicationController
  def index
    set_meta_tags(
      title: 'Contact Us - Ruby on Rails Consulting | Dallas-Fort Worth, Texas',
      description: 'Get in touch with RailsHouse for Ruby on Rails development and consulting services in Dallas, Fort Worth, and throughout Texas.',
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
  
  def quote
    set_meta_tags(
      title: 'Request a Free Quote - Ruby on Rails Consulting | Dallas-Fort Worth, Texas',
      description: 'Request a free consultation and quote for your Ruby on Rails project. Our expert team in Dallas-Fort Worth provides tailored solutions for enterprise applications, migrations, and custom development.',
      keywords: 'Rails consulting quote Dallas, free Rails consultation Fort Worth, DFW Rails project estimate, Texas Rails consulting quote, enterprise Rails quote',
      og: {
        title: 'Request Free Quote - RailsHouse Rails Consulting',
        description: 'Get a personalized quote for your Ruby on Rails project from our expert consultants in Dallas-Fort Worth, Texas.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      }
    )
  end
end
