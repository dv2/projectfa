class HomesController < ApplicationController
  def index
    @piechart_overall = Survey.overall

    @piechart_gender_data_male = Survey.gender_data('Male')
    @piechart_gender_data_female = Survey.gender_data('Female')


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
