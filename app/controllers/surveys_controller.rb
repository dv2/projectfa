class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:success] = 'Thanks for submitting your choice.'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:pick, :gender, :year_of_birth, :country, :ap_district, :india_state)
  end
end
