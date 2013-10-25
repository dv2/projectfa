class Survey < ActiveRecord::Base
  validates :pick, presence: true
end
