require "application_system_test_case"

class QuoteFlowsTest < ApplicationSystemTestCase
  test "visiting the quote page displays form and content" do
    visit request_quote_url
    
    assert_selector "h1", text: "Request a Free Quote"
    assert_text "Partner with Industry-Leading Rails Experts"
    
    # Verify key benefits are displayed
    assert_text "Strategic Expertise"
    assert_text "Proven Track Record"
    assert_text "Scalable Solutions"
  end
  
  test "quote page displays CompanyHub form container" do
    visit request_quote_url
    
    assert_selector "#companyhub-form"
  end
  
  test "quote page shows trust indicators" do
    visit request_quote_url
    
    assert_text "200+"
    assert_text "Projects Delivered"
    assert_text "15+"
    assert_text "Years of Excellence"
  end
  
  test "quote page has proper breadcrumb navigation" do
    visit request_quote_url
    
    within(".breadcrumb") do
      assert_link "Home"
      assert_text "Request a Free Quote"
    end
  end
  
  test "header request quote button links to quote page" do
    visit root_url
    
    within("header") do
      click_link "Request Free Quote"
    end
    
    assert_current_path request_quote_path
  end
end
