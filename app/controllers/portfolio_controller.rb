class PortfolioController < ApplicationController
  before_action :set_portfolio, only: [:show]

  def index
    @portfolios = Portfolio.where(published_at: ..Time.current).order(published_at: :desc).page(params[:page]).per(6)
    
    # SEO Meta Tags
    set_meta_tags title: 'Portfolio - Ruby on Rails Case Studies & Success Stories',
                  description: 'Explore our portfolio of successful Ruby on Rails projects including e-commerce platforms, healthcare solutions, fintech applications, and educational systems. Real client results and case studies.',
                  keywords: 'Rails portfolio, Ruby on Rails projects, Rails case studies, e-commerce development, healthcare software, fintech solutions, Dallas Fort Worth Rails development',
                  og: {
                    title: 'RailsHouse Portfolio - Rails Development Case Studies',
                    description: 'Successful Ruby on Rails projects and client case studies from RailsHouse',
                    type: 'website',
                    url: request.original_url,
                    image: "#{request.base_url}/icon.png"
                  }
  end

  def show
    # SEO Meta Tags for individual portfolio items
    set_meta_tags title: "#{@portfolio.title} - Case Study | RailsHouse Portfolio",
                  description: @portfolio.description,
                  keywords: "#{@portfolio.industry}, #{@portfolio.client}, Ruby on Rails, case study, #{@portfolio.technologies}",
                  og: {
                    title: @portfolio.title,
                    description: @portfolio.description,
                    type: 'article',
                    url: request.original_url,
                    image: "#{request.base_url}/icon.png"
                  },
                  article: {
                    published_time: @portfolio.published_at&.iso8601,
                    tag: @portfolio.industry
                  }
  end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
