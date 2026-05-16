require "application_system_test_case"

class NavigationTest < ApplicationSystemTestCase
  test "header displays new contact phone" do
    visit root_url
    
    within("header") do
      assert_text "+1 857 567 2674"
    end
  end
  
  test "header displays obfuscated email" do
    visit root_url
    
    within("header") do
      assert_selector "a[href*='hello']"
    end
  end
  
  test "main navigation menu is accessible" do
    visit root_url
    
    within("nav") do
      assert_link "Home"
      assert_link "Company"
      assert_link "Services"
      assert_link "Portfolio"
      assert_link "Articles"
      assert_link "Contact Us"
    end
  end
  
  test "company dropdown menu works" do
    visit root_url
    
    within("nav") do
      assert_link "Our Team"
    end
  end
  
  test "services dropdown menu contains all service links" do
    visit root_url
    
    # The dropdown should contain all 12 services
    service_links = [
      "Ruby on Rails Consulting",
      "Ruby on Rails Migration",
      "Ruby on Rails Development",
      "Ruby on Rails Testing",
      "Ruby on Rails SEO",
      "Ruby on Rails Maintenance",
      "Staff Augmentation",
      "Refactoring for Microservices",
      "Front End JS Development",
      "Performance Tuning",
      "Training",
      "Advisory Services"
    ]
    
    service_links.each do |service|
      assert_link service
    end
  end
end
