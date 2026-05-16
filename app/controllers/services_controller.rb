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
  
  def testing
    set_meta_tags title: 'Ruby on Rails Testing Services | QA & Test Automation | Dallas Fort Worth',
                  description: 'Comprehensive Ruby on Rails testing services in Dallas-Fort Worth. Unit testing, integration testing, performance testing, and automated QA for Rails applications.',
                  keywords: 'Rails testing, Rails QA, Rails test automation, RSpec testing, Dallas Rails testing, Fort Worth Rails QA, Texas Rails testing services'
  end
  
  def seo
    set_meta_tags title: 'Ruby on Rails SEO Services | Technical SEO Optimization | Dallas Fort Worth',
                  description: 'Ruby on Rails SEO optimization services in Dallas-Fort Worth. Technical SEO, performance optimization, schema markup, and search engine visibility for Rails applications.',
                  keywords: 'Rails SEO, Rails technical SEO, Rails performance SEO, Dallas Rails SEO, Fort Worth Rails optimization, Texas Rails SEO services'
  end
  
  def refactoring
    set_meta_tags title: 'Refactoring for Microservices | Rails Modernization | Dallas Fort Worth',
                  description: 'Expert Rails refactoring and microservices transformation in Dallas-Fort Worth. Break down monoliths, implement microservices architecture, and modernize Rails applications.',
                  keywords: 'Rails refactoring, Rails microservices, monolith to microservices, Dallas Rails refactoring, Fort Worth Rails modernization, Texas Rails architecture'
  end
  
  def frontend
    set_meta_tags title: 'Ruby on Rails Front End JS Development | React, Vue, Angular | Dallas Fort Worth',
                  description: 'Modern front-end JavaScript development for Rails applications in Dallas-Fort Worth. React, Vue.js, Angular integration with Rails, SPA development, and API-driven interfaces.',
                  keywords: 'Rails frontend, Rails React, Rails Vue, Rails JavaScript, Dallas Rails frontend, Fort Worth Rails React, Texas Rails SPA development'
  end
  
  def performance
    set_meta_tags title: 'Ruby on Rails Performance Tuning | Optimization Services | Dallas Fort Worth',
                  description: 'Ruby on Rails performance tuning and optimization services in Dallas-Fort Worth. Database optimization, caching strategies, load balancing, and scalability improvements.',
                  keywords: 'Rails performance, Rails optimization, Rails tuning, Rails scalability, Dallas Rails performance, Fort Worth Rails optimization, Texas Rails tuning'
  end
  
  def training
    set_meta_tags title: 'Ruby on Rails Training | Corporate Training & Workshops | Dallas Fort Worth',
                  description: 'Professional Ruby on Rails training and workshops in Dallas-Fort Worth. Corporate training, team upskilling, Rails bootcamps, and custom curriculum development.',
                  keywords: 'Rails training, Rails workshops, Rails bootcamp, Rails corporate training, Dallas Rails training, Fort Worth Rails workshops, Texas Rails education'
  end
  
  def advisory
    set_meta_tags title: 'Ruby on Rails Advisory Services | Strategic Technology Consulting | Dallas Fort Worth',
                  description: 'Strategic Ruby on Rails advisory services in Dallas-Fort Worth. Technology roadmaps, architecture reviews, vendor selection, and executive-level Rails consulting.',
                  keywords: 'Rails advisory, Rails strategy, Rails architecture review, Rails consulting, Dallas Rails advisory, Fort Worth Rails strategy, Texas Rails consulting'
  end
end
