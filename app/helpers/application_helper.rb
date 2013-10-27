module ApplicationHelper

  def already_voted?
    if current_user.survey
      true
    else
      false
    end
  end
end
