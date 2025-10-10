require "application_system_test_case"

class ServicePagesTest < ApplicationSystemTestCase
  test "all service pages are accessible from header dropdown" do
    visit root_url
    
    # Services should have dropdown menu
    within("header nav") do
      assert_link "Services"
    end
  end
  
  test "all service pages load correctly" do
    services = [
      { path: services_consulting_path, title: "Ruby on Rails Consulting" },
      { path: services_migration_path, title: "Ruby on Rails Migration" },
      { path: services_development_path, title: "Ruby on Rails Development" },
      { path: services_testing_path, title: "Ruby on Rails Testing" },
      { path: services_seo_path, title: "Ruby on Rails SEO" },
      { path: services_maintenance_path, title: "Ruby on Rails Maintenance" },
      { path: services_staffing_path, title: "Ruby on Rails Staff Augmentation" },
      { path: services_refactoring_path, title: "Refactoring for Microservices" },
      { path: services_frontend_path, title: "Ruby on Rails Front End" },
      { path: services_performance_path, title: "Ruby on Rails Performance" },
      { path: services_training_path, title: "Ruby on Rails Training" },
      { path: services_advisory_path, title: "Ruby on Rails Advisory" }
    ]
    
    services.each do |service|
      visit service[:path]
      assert_selector "h1", text: service[:title]
      assert_selector ".breadcrumb"
    end
  end
  
  test "footer links to all service pages" do
    visit root_url
    
    within("footer") do
      assert_link "Ruby on Rails Consulting"
      assert_link "Ruby on Rails Migration"
      assert_link "Ruby on Rails Development"
      assert_link "Ruby on Rails Testing"
      assert_link "Ruby on Rails SEO"
      assert_link "Ruby on Rails Maintenance"
      assert_link "Staff Augmentation"
      assert_link "Refactoring for Microservices"
      assert_link "Ruby on Rails Front End JS Dev"
      assert_link "Ruby on Rails Performance Tuning"
      assert_link "Ruby on Rails Training"
      assert_link "Ruby on Rails Advisory Services"
    end
  end
end
