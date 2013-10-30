class Survey < ActiveRecord::Base
  belongs_to :user

  validates :pick, presence: true
  validates :gender, presence: true
  validates :year_of_birth, presence: true
  validates :country, presence: true
  validates :india_state, presence: true, if: :india?
  validates :ap_district, presence: true, if: :ap_state?

  scope :telangana, -> { where(ap_district: ApDistrict.telangana_districts, text: nil)}
  scope :andhra, -> { where(ap_district: ApDistrict.andhra_districts, text: nil )}
  scope :andhra_and_telangana, -> { where(ap_district: ApDistrict.andhra_and_telangana_districts, text: nil)}
  scope :not_andhra_nor_telangana, -> { where(ap_district: '', text: nil)}

  def india?
    self.country == 'India'
  end

  def ap_state?
    self.india_state == 'Andhra Pradesh'
  end

  def self.overall
    out = []
    out << ['x', 'Votes']
    num = Survey.where(pick: 'United').count
    out << ['United', num]
    num = Survey.where(pick: 'Separate').count
    out << ['Separate', num]
    num = Survey.where(pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.gender_data(gender)
    out = []
    out << ['Male', 'Votes'] if gender == 'Male'
    out << ['Female', 'Votes'] if gender == 'Female'

    num = Survey.where(gender: gender, pick: 'United').count
    out << ['United', num]

    num = Survey.where(gender: gender, pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.where(gender: gender, pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.country_data_india
    out = []
    out << ['x', 'Votes']

    country = 'India'

    num = Survey.where(country: country, pick: 'United').count
    out << ['United', num]

    num = Survey.where(country: country, pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.where(country: country, pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.country_data_not_india
    out = []
    out << ['x', 'Votes']

    country = 'India'

    total = Survey.where(pick: 'United').count
    num = Survey.where(country: country, pick: 'United').count
    out << ['United', total - num]

    total = Survey.where(pick: 'Separate').count
    num = Survey.where(country: country, pick: 'Separate').count
    out << ['Separate', total - num]

    total = Survey.where(pick: 'None').count
    num = Survey.where(country: country, pick: 'None').count
    out << ['Does Not Matter', total - num]

    out
  end

  def self.state_data_ap
    out = []
    out << ['x', 'Votes']

    india_state = 'Andhra Pradesh'

    num = Survey.where(india_state: india_state, pick: 'United').count
    out << ['United', num]

    num = Survey.where(india_state: india_state, pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.where(india_state: india_state, pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.state_data_not_ap
    out = []
    out << ['x', 'Votes']

    india_state = 'Andhra Pradesh'

    total = Survey.where(pick: 'United').count
    num = Survey.where(india_state: india_state, pick: 'United').count
    out << ['United', total - num]

    total = Survey.where(pick: 'Separate').count
    num = Survey.where(india_state: india_state, pick: 'Separate').count
    out << ['Separate', total - num]

    total = Survey.where(pick: 'None').count
    num = Survey.where(india_state: india_state, pick: 'None').count
    out << ['Does Not Matter', total - num]

    out
  end

  def self.andhra_region
    out = []
    out << ['x', 'Votes']

    num = Survey.andhra.where(pick: 'United').count
    out << ['United', num]

    num = Survey.andhra.where(pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.andhra.where(pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.telangana_region
    out = []
    out << ['x', 'Votes']

    num = Survey.telangana.where(pick: 'United').count
    out << ['United', num]

    num = Survey.telangana.where(pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.telangana.where(pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end

  def self.not_andhra_nor_telangana_region
    out = []
    out << ['x', 'Votes']

    num = Survey.not_andhra_nor_telangana.where(pick: 'United').count
    out << ['United', num]

    num = Survey.not_andhra_nor_telangana.where(pick: 'Separate').count
    out << ['Separate', num]

    num = Survey.not_andhra_nor_telangana.where(pick: 'None').count
    out << ['Does Not Matter', num]

    out
  end
end
