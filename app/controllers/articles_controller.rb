class ArticlesController < ApplicationController
  def index
    @articles = Article.published
    
    # Filter by category
    if params[:category].present?
      @articles = @articles.by_category(params[:category])
      @current_category = params[:category]
    end
    
    # Filter by archive (year and month)
    if params[:year].present? && params[:month].present?
      @articles = @articles.by_month(params[:year], params[:month])
      @current_archive = "#{Date::MONTHNAMES[params[:month].to_i]} #{params[:year]}"
    end
    
    # Get categories and archives for sidebar
    @categories = Article.used_categories
    @archives = Article.archive_months
    
    @articles = @articles.page(params[:page]).per(6)
    
    # Set SEO meta tags
    set_meta_tags(
      title: 'Ruby on Rails Blog & Articles | Dallas-Fort Worth Rails Experts',
      description: 'Technical articles and insights on Ruby on Rails development from RailsHouse, a Fort Worth, Texas based Rails consulting company serving the Dallas-Fort Worth metroplex.',
      keywords: 'Ruby on Rails blog, Rails tutorials Dallas, Fort Worth Rails articles, DFW Rails development insights, Texas Rails technical blog',
      og: {
        title: 'RailsHouse Blog - Ruby on Rails Insights from Dallas-Fort Worth',
        description: 'Expert Ruby on Rails articles and technical insights from our team in Fort Worth, Texas.',
        type: 'website',
        url: request.original_url,
        image: "#{request.base_url}/icon.png"
      }
    )
  end

  def show
    @article = Article.find(params[:id])
    
    # Set article-specific meta tags
    set_meta_tags(
      title: @article.title,
      description: view_context.truncate(view_context.strip_tags(@article.content), length: 160),
      keywords: [@article.category, 'Ruby on Rails', 'Web Development', 'Technical Article'].compact.join(', '),
      og: {
        title: @article.title,
        type: 'article',
        url: article_url(@article),
        image: "#{request.base_url}/images/blog-detail1.png",
        description: view_context.truncate(view_context.strip_tags(@article.content), length: 160),
        article: {
          published_time: @article.published_at.iso8601,
          author: 'RailsHouse Team',
          section: @article.category
        }
      },
      twitter: {
        card: 'summary_large_image',
        title: @article.title,
        description: view_context.truncate(view_context.strip_tags(@article.content), length: 160),
        image: "#{request.base_url}/images/blog-detail1.png"
      }
    )
    
    # Get related articles from same category
    @related_articles = Article.published
                               .where(category: @article.category)
                               .where.not(id: @article.id)
                               .limit(3)
  end
end
