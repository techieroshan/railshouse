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
        "postalCode": "76131",
        "streetAddress": "1320 Pepperhill Ln",
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
