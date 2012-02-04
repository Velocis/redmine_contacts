module ContactsHelper

  def formatted_custom_field(custom_value)
    if custom_value
      val = custom_value.value
      if /github/i === custom_value.custom_field.name
        link_to val, "https://github.com/#{val}"
      elsif custom_value.custom_field.field_format == "text"
        content_tag(:pre, val)
      else
        case val
          when /^[a-z0-9._%-]+@[a-z0-9.-]+\.[a-z]{2,4}$/i then mail_to(val)
          when /^https?:\/\// then link_to(val) 
        else
          val
        end
      end
    else
      "&nbsp;"
    end
  end

end
