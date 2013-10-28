class HomesController < ApplicationController
  def index
    @piechart_overall = Survey.overall

    @piechart_gender_data_male = Survey.gender_data('Male')
    @piechart_gender_data_female = Survey.gender_data('Female')


    @piechart_country_india = Survey.country_data_india
    @piechart_country_not_india = Survey.country_data_not_india

    @piechart_state_andhra_pradesh = Survey.state_data_ap
    @piechart_state_not_andhra_pradesh = Survey.state_data_not_ap

    # @piechart_district_andhra = Survey.district_data_andhra
    # @piechart_district_telangana = Survey.district_data_not_andhra

    Activity.create_activity(request, params, current_user)
  end
end
