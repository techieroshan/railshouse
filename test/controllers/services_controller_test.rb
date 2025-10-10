require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get services_index_url
    assert_response :success
  end
  
  test "should get consulting page" do
    get services_consulting_url
    assert_response :success
    assert_select "title", /Consulting/
  end
  
  test "should get migration page" do
    get services_migration_url
    assert_response :success
    assert_select "title", /Migration/
  end
  
  test "should get development page" do
    get services_development_url
    assert_response :success
    assert_select "title", /Development/
  end
  
  test "should get testing page" do
    get services_testing_url
    assert_response :success
    assert_select "title", /Testing/
  end
  
  test "should get seo page" do
    get services_seo_url
    assert_response :success
    assert_select "title", /SEO/
  end
  
  test "should get maintenance page" do
    get services_maintenance_url
    assert_response :success
    assert_select "title", /Maintenance/
  end
  
  test "should get staffing page" do
    get services_staffing_url
    assert_response :success
    assert_select "title", /Staff Augmentation/
  end
  
  test "should get refactoring page" do
    get services_refactoring_url
    assert_response :success
    assert_select "title", /Microservices/
  end
  
  test "should get frontend page" do
    get services_frontend_url
    assert_response :success
    assert_select "title", /Front End/
  end
  
  test "should get performance page" do
    get services_performance_url
    assert_response :success
    assert_select "title", /Performance/
  end
  
  test "should get training page" do
    get services_training_url
    assert_response :success
    assert_select "title", /Training/
  end
  
  test "should get advisory page" do
    get services_advisory_url
    assert_response :success
    assert_select "title", /Advisory/
  end
  
  test "all service pages have Dallas-Fort Worth in meta description" do
    services = [
      services_consulting_url,
      services_migration_url,
      services_development_url,
      services_testing_url,
      services_seo_url,
      services_maintenance_url,
      services_staffing_url,
      services_refactoring_url,
      services_frontend_url,
      services_performance_url,
      services_training_url,
      services_advisory_url
    ]
    
    services.each do |service_url|
      get service_url
      assert_response :success
      assert_select "meta[name='description'][content*='Dallas-Fort Worth'], meta[name='description'][content*='Dallas'], meta[name='description'][content*='Fort Worth']"
    end
  end
end
