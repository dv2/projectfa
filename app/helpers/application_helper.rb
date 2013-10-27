module ApplicationHelper

  def already_voted?
    if current_user.survey
      true
    else
      false
    end
  end

  def display_logged_in_info
    if current_user.provider.nil?
      "Logged in as #{current_user.email}"
    elsif current_user.provider == 'facebook'
      "Logged in via Facebook: #{current_user.p_nickname}"
    end
  end
end
