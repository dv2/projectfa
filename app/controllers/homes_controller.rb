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


    @piechart_district_data = []
    @piechart_district_data << ['District', 'Votes']
    @piechart_district_data << ['Hyderabad', 27]
    @piechart_district_data << ['Vizag', 19]
    @piechart_district_data << ['Krishna', 19]

    @piechart_state_data = []
    @piechart_state_data << ['State', 'Votes']
    @piechart_state_data << ['Andhra Pradesh', 52]
    @piechart_state_data << ['Tamil Nadu', 43]

    @piechart_country_data = []
    @piechart_country_data << ['Country', 'Votes']
    @piechart_country_data << ['India', 232]
    @piechart_country_data << ['United States', 29]
    @piechart_country_data << ['China', 22]
  end
end
