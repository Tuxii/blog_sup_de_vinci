module ApplicationHelper
  def display_flash_message(type, message)
    case type
    when "notice"
      content_tag(:div, message, style: "color:green;")
    when "alert"
      content_tag(:div, message, style: "color:red;")
    end
  end
end
