require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "obfuscated_email generates HTML entity encoded email" do
    email = "hello@railshouse.com"
    result = obfuscated_email(email)
    
    # Should contain HTML entities for obfuscation
    assert_match /&#\d+;/, result
    # Should not contain plain email
    assert_not_includes result, "hello@railshouse.com"
    # Should be a link
    assert_match /<a/, result
  end
  
  test "obfuscated_email accepts custom text" do
    email = "test@example.com"
    result = obfuscated_email(email, text: "Contact Us")
    
    assert_includes result, "Contact Us"
  end
  
  test "current_year returns current year" do
    assert_equal Time.current.year, current_year
  end
  
  test "obfuscated_email accepts custom CSS class" do
    email = "test@example.com"
    result = obfuscated_email(email, class: "custom-class")
    
    assert_includes result, 'class="custom-class"'
  end
end
