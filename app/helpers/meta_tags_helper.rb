module MetaTagsHelper
  def default_meta_tags
    {
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
        image: view_context.image_url('icon.png'),
        description: :description,
        site_name: 'RailsHouse'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@railshouse',
        title: :title,
        description: :description,
        image: view_context.image_url('icon.png')
      }
    }
  end

  def article_meta_tags(article)
    {
      title: article.title,
      description: truncate(strip_tags(article.content), length: 160),
      keywords: [article.category, 'Ruby on Rails', 'Web Development', 'Technical Article'].compact.join(', '),
      og: {
        title: article.title,
        type: 'article',
        url: article_url(article),
        image: view_context.image_url('blog-detail1.png'),
        description: truncate(strip_tags(article.content), length: 160),
        article: {
          published_time: article.published_at.iso8601,
          author: 'RailsHouse Team',
          section: article.category
        }
      },
      twitter: {
        card: 'summary_large_image',
        title: article.title,
        description: truncate(strip_tags(article.content), length: 160),
        image: view_context.image_url('blog-detail1.png')
      }
    }
  end

  def structured_data_organization
    {
      "@context": "https://schema.org",
      "@type": "Organization",
      "name": "RailsHouse",
      "url": root_url,
      "logo": "#{request.base_url}/icon.png",
      "description": "Ruby on Rails Development & Consulting firm based in Fort Worth, Dallas-Fort Worth, Texas",
      "address": {
        "@type": "PostalAddress",
        "addressLocality": "Fort Worth",
        "addressRegion": "TX",
        "addressCountry": "US"
      },
      "sameAs": [
        "https://github.com/railshouse",
        "https://twitter.com/railshouse",
        "https://linkedin.com/company/railshouse"
      ]
    }.to_json.html_safe
  end

  def structured_data_article(article)
    {
      "@context": "https://schema.org",
      "@type": "Article",
      "headline": article.title,
      "datePublished": article.published_at.iso8601,
      "dateModified": article.updated_at.iso8601,
      "author": {
        "@type": "Organization",
        "name": "RailsHouse"
      },
      "publisher": {
        "@type": "Organization",
        "name": "RailsHouse",
        "logo": {
          "@type": "ImageObject",
          "url": "#{request.base_url}/icon.png"
        }
      },
      "description": truncate(strip_tags(article.content), length: 160),
      "articleSection": article.category,
      "url": article_url(article)
    }.to_json.html_safe
  end

  def structured_data_local_business
    {
      "@context": "https://schema.org",
      "@type": "ProfessionalService",
      "name": "RailsHouse",
      "url": root_url,
      "logo": "#{request.base_url}/icon.png",
      "image": "#{request.base_url}/icon.png",
      "description": "Premier Ruby on Rails development and consulting company serving Dallas-Fort Worth, Texas and nationwide.",
      "telephone": "+18575672674",
      "address": {
        "@type": "PostalAddress",
        "addressLocality": "Fort Worth",
        "addressRegion": "TX",
        "addressCountry": "US"
      },
      "geo": {
        "@type": "GeoCoordinates",
        "latitude": 32.7555,
        "longitude": -97.3308
      },
      "areaServed": [
        { "@type": "City", "name": "Fort Worth" },
        { "@type": "City", "name": "Dallas" },
        { "@type": "State", "name": "Texas" },
        { "@type": "Country", "name": "United States" }
      ],
      "priceRange": "$$$$",
      "openingHours": "Mo-Fr 09:00-18:00",
      "knowsAbout": ["Ruby on Rails", "Web Development", "Software Consulting", "Rails Migration", "Staff Augmentation"]
    }.to_json.html_safe
  end

  def structured_data_faq
    {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "What services does RailsHouse offer?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "RailsHouse offers Ruby on Rails consulting, custom development, migration and upgrades, maintenance and support, staff augmentation, testing, SEO optimization, code refactoring, front-end development, performance tuning, training, and advisory services."
          }
        },
        {
          "@type": "Question",
          "name": "Where is RailsHouse located?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "RailsHouse is based in Fort Worth, Texas, serving the Dallas-Fort Worth metroplex and clients nationwide across the United States."
          }
        },
        {
          "@type": "Question",
          "name": "How can I get a quote for my Rails project?",
          "acceptedAnswer": {
            "@type": "Answer",
          "text": "Visit our Request a Quote page at railshouse.com/contact/quote to share your project details. Our team will follow up promptly."
          }
        },
        {
          "@type": "Question",
          "name": "Does RailsHouse work with the latest version of Ruby on Rails?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "Yes, RailsHouse works with all versions of Ruby on Rails including the latest Rails 8.x. We specialize in upgrading legacy Rails applications to current versions."
          }
        }
      ]
    }.to_json.html_safe
  end

  def structured_data_breadcrumb(items)
    {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": items.each_with_index.map do |item, index|
        {
          "@type": "ListItem",
          "position": index + 1,
          "name": item[:name],
          "item": item[:url]
        }
      end
    }.to_json.html_safe
  end
end
