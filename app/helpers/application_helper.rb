module ApplicationHelper
  # Obfuscate email addresses to prevent bots from scraping them
  def obfuscated_email(email, options = {})
    # Split email into parts
    local, domain = email.split('@')
    
    # Create obfuscated version using HTML entities and CSS
    obfuscated = local.chars.map { |c| "&##{c.ord};" }.join + 
                 "&#64;" + 
                 domain.chars.map { |c| "&##{c.ord};" }.join
    
    # Create link with additional obfuscation
    link_text = options[:text] || obfuscated
    css_class = options[:class] || ''
    
    content_tag(:a, 
      link_text.html_safe, 
      href: "mailto:#{obfuscated}".html_safe,
      class: css_class,
      data: { email: obfuscated }
    )
  end
  
  # Generate current year for copyright
  def current_year
    Time.current.year
  end
end
