require "test_helper"

class SeoAndAccessibilityTest < ActionDispatch::IntegrationTest
  test "home page has proper SEO meta tags" do
    get root_url
    assert_response :success
    
    assert_select "title"
    assert_select "meta[name='description']"
    assert_select "meta[name='keywords']"
    assert_select "meta[property='og:title']"
    assert_select "meta[property='og:description']"
    assert_select "meta[property='og:type']"
    assert_select "meta[property='og:url']"
  end
  
  test "all pages have skip to content link for accessibility" do
    pages = [root_url, contact_index_url, services_index_url, company_index_url]
    
    pages.each do |page_url|
      get page_url
      assert_select "a.skip-link[href='#content']", text: "Skip to main content"
    end
  end
  
  test "all pages have proper lang attribute" do
    get root_url
    assert_select "html[lang='en']"
  end
  
  test "images have alt attributes" do
    get root_url
    # Check that logo has alt text
    assert_select "img[alt]"
  end
  
  test "footer links are not broken" do
    get root_url
    
    # Extract all footer links
    footer_links = [
      root_path,
      company_index_path,
      services_index_path,
      portfolio_index_path,
      articles_path,
      contact_index_path
    ]
    
    footer_links.each do |link|
      get link
      assert_response :success
    end
  end
  
  test "robots.txt allows search engines" do
    get "/robots.txt"
    assert_response :success
    assert_match /User-agent: \*/, response.body
    assert_match /Allow: \//, response.body
  end
  
  test "robots.txt includes AI agent directives for AEO" do
    get "/robots.txt"
    assert_response :success
    
    # Check for AI agents
    assert_match /GPTBot/, response.body
    assert_match /ChatGPT-User/, response.body
    assert_match /CCBot/, response.body
    assert_match /anthropic-ai/, response.body
    assert_match /Claude-Web/, response.body
    assert_match /PerplexityBot/, response.body
  end
  
  test "sitemap is accessible" do
    get "/sitemap.xml"
    assert_response :success
    assert_match /<urlset/, response.body
  end
  
  test "structured data is present on home page" do
    get root_url
    assert_select "script[type='application/ld+json']"
  end
end
