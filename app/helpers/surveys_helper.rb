module SurveysHelper
  def years
    current_year = Date.today.year
    start_year = current_year - 150
    (start_year..current_year).to_a.reverse
  end

  def india_states
    IndiaState.pluck(:name)
  end

  def ap_districts
    ApDistrict.pluck(:name)
  end

  def countries
    CountrySelect::COUNTRIES.values
    ["India", "United States"] + CountrySelect::COUNTRIES.values
  end

  def survey_pick(pick)
    case pick
    when 'United'
      'United Andhra'
    when 'Separate'
      'Separate Telangana State'
    else
      'Does Not Matter'
    end
  end
end
