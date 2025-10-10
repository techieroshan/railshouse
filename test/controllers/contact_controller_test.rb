require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_index_url
    assert_response :success
    assert_select "h1", "Contact us"
  end
  
  test "should get quote page" do
    get request_quote_url
    assert_response :success
    assert_select "h1", "Request a Free Quote"
  end
  
  test "contact page has proper meta tags" do
    get contact_index_url
    assert_response :success
    assert_select "title", /Contact Us.*Dallas-Fort Worth/
    assert_select "meta[name='description']"
  end
  
  test "quote page has proper meta tags" do
    get request_quote_url
    assert_response :success
    assert_select "title", /Request.*Free Quote.*Dallas-Fort Worth/
    assert_select "meta[name='description']"
  end
end
