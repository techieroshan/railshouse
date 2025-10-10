class SitemapsController < ApplicationController
  def index
    @articles = Article.published.order(published_at: :desc)
    @portfolios = Portfolio.where('published_at <= ?', Time.current).order(published_at: :desc)
    
    respond_to do |format|
      format.xml
    end
  end
end
