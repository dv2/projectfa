class Admin::ActivitiesController < ApplicationController
  before_filter :only_allow_admin_access

  def index
    @total_users = User.count
    @total_surveys = Survey.count
    ip = Content.where(id: 2).first.value
    @total_activities = Activity.where.not(request_remote_ip: ip).count
    @total_activities_all = Activity.count
    date_start = Date.new(2013, 10, 22)
    date_end = Date.today
    @dates = (date_start..date_end).to_a.reverse
  end

  private

  def only_allow_admin_access
    if current_user && current_user.is_admin?
      return true
    else
      redirect_to login_path
    end
  end
end
