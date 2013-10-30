class ApDistrict < ActiveRecord::Base
  def self.telangana_districts
    ["Adilabad", "Hyderabad", "Karimnagar", "Khammam", "Mahbubnagar", "Medak", "Nalgonda", "Nizamabad", "Rangareddy", "Warangal"]
  end

  def self.andhra_districts
    ["Anantapur", "Chittoor", "East Godavari", "Guntur", "Cuddapah", "Krishna", "Kurnool", "Nellore", "Prakasam", "Srikakulam", "Vishakhapatnam", "Vizianagaram", "West Godavari"]
  end

  def self.andhra_and_telangana_districts
    self.andhra_districts + self.telangana_districts
  end
end
