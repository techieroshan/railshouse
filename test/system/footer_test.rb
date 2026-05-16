require "application_system_test_case"

class FooterTest < ApplicationSystemTestCase
  test "footer displays dynamic copyright year" do
    visit root_url
    
    current_year = Time.current.year
    within("footer") do
      assert_text "© 2009-#{current_year}. RailsHouse. All Rights Reserved"
    end
  end
  
  test "footer displays Kosansh Solutions Inc attribution" do
    visit root_url
    
    within("footer") do
      assert_text "Developed by"
      assert_link "RailsHouse"
      assert_link "Kosansh Solutions Inc", href: "https://kosansh.com"
    end
  end
  
  
  test "footer displays new contact information" do
    visit root_url
    
    within("footer") do
      assert_text "Fort Worth, TX USA"
      # Phone number without formatting
      assert_selector "a[href='tel:+18575672674']"
    end
  end
  
  test "footer has social media links" do
    visit root_url
    
    within("footer") do
      assert_link href: /facebook/
      assert_link href: /twitter/
      assert_link href: /linkedin/
      assert_link href: /youtube/
    end
  end
end
