class HomesController < ApplicationController
  def index
    @piechart_overall = Survey.overall

    @piechart_gender_data_male = Survey.gender_data('Male')
    @piechart_gender_data_female = Survey.gender_data('Female')


    @piechart_country_india = Survey.country_data_india
    @piechart_country_not_india = Survey.country_data_not_india

    @piechart_state_andhra_pradesh = Survey.state_data_ap
    @piechart_state_not_andhra_pradesh = Survey.state_data_not_ap

    # if current_user && current_user.is_admin?
      @piechart_telangana_region = Survey.telangana_region
      @piechart_andhra_region = Survey.andhra_region
      @piechart_not_andhra_nor_telangana_region = Survey.not_andhra_nor_telangana_region
    # end

    Activity.create_activity(request, params, current_user)
  end
end
