class ServicesController < ApplicationController
  def index
  end
  
  def consulting
    set_meta_tags title: 'Ruby on Rails Consulting Services | Expert Rails Consultants | Dallas Fort Worth',
                  description: 'Strategic Ruby on Rails consulting services in Dallas-Fort Worth. Enterprise architecture, performance optimization, security audits, and technical leadership from experienced Rails consultants.',
                  keywords: 'Rails consulting, Ruby on Rails consultants, Rails architecture, Dallas Rails consulting, Fort Worth Rails experts, Texas Rails consulting, enterprise Rails consulting'
  end
  
  def migration
    set_meta_tags title: 'Ruby on Rails Migration & Upgrade Services | Legacy System Modernization | DFW',
                  description: 'Expert Ruby on Rails migration and upgrade services in Dallas-Fort Worth. Modernize legacy systems, upgrade Rails versions, migrate to microservices with zero downtime.',
                  keywords: 'Rails migration, Rails upgrade, legacy system migration, Rails modernization, Dallas Rails migration, Fort Worth Rails upgrade, Texas Rails migration services'
  end
  
  def maintenance
    set_meta_tags title: 'Ruby on Rails Maintenance & Support Services | 24/7 Rails Support | Dallas TX',
                  description: 'Comprehensive Ruby on Rails maintenance and support services in Dallas-Fort Worth. 24/7 monitoring, security updates, performance optimization, and ongoing Rails support.',
                  keywords: 'Rails maintenance, Rails support, Rails monitoring, Dallas Rails maintenance, Fort Worth Rails support, Texas Rails maintenance, 24/7 Rails support'
  end
  
  def staffing
    set_meta_tags title: 'Ruby on Rails Staff Augmentation | Hire Rails Developers | Dallas Fort Worth',
                  description: 'Ruby on Rails staff augmentation services in Dallas-Fort Worth. Hire expert Rails developers, extend your team with senior engineers, flexible engagement models.',
                  keywords: 'Rails staffing, hire Rails developers, Rails staff augmentation, Dallas Rails developers, Fort Worth Rails talent, Texas Rails staffing, Rails consultants for hire'
  end
  
  def development
    set_meta_tags title: 'Custom Ruby on Rails Development Services | Enterprise Web Applications | DFW',
                  description: 'Custom Ruby on Rails development services in Dallas-Fort Worth. Build scalable web applications, APIs, microservices, and enterprise solutions with expert Rails developers.',
                  keywords: 'Rails development, custom Rails applications, Rails web development, Dallas Rails development, Fort Worth Rails developers, Texas Rails development, enterprise Rails'
  end
end
