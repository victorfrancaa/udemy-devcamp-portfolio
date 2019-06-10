module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path)
      + "<br>".html_safe
      + (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def sample_helper
    "<p>My helper</p>".html_safe
  end

  def source_helper(layout_name)
    if session[:source]
      content = "<p>Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout</p>"
      content_tag(:p, content, class: "source-content")
    end
  end

end
