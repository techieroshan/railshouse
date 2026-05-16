require "application_system_test_case"

class ContactFlowsTest < ApplicationSystemTestCase
  test "visiting the contact page displays correct contact information" do
    visit contact_index_url
    
    assert_selector "h1", text: "Contact us"
    
    # Verify new contact information is displayed
    assert_text "+1 857 567 2674"
    assert_text "+1 469 532 0777"
  end
  
  test "contact page does not display old contact form" do
    visit contact_index_url
    
    # Ensure old "Let's Get in Touch" form is removed
    assert_no_text "Lets Get in Touch"
    assert_no_selector "input[placeholder='Name']"
    assert_no_selector "input[placeholder='email']"
    assert_no_selector "textarea[placeholder='Project Discription']"
  end
  
  test "contact page has proper breadcrumb navigation" do
    visit contact_index_url
    
    within(".breadcrumb") do
      assert_link "Home"
      assert_text "Contact us"
    end
  end
  
end
