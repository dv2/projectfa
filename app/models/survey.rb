class Survey < ActiveRecord::Base
  validates :pick, presence: true

  def self.overall
    out = []
    out << ['x', 'y']
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
end
