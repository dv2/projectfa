require 'spec_helper'

describe ApDistrict do
  before do
    @telangana_districts = ["Adilabad", "Hyderabad", "Karimnagar", "Khammam", "Mahbubnagar", "Medak", "Nalgonda", "Nizamabad", "Rangareddy", "Warangal"]
    @andhra_districts = ["Anantapur", "Chittoor", "East Godavari", "Guntur", "Cuddapah", "Krishna", "Kurnool", "Nellore", "Prakasam", "Srikakulam", "Vishakhapatnam", "Vizianagaram", "West Godavari"]
    @apd = ApDistrict.new
  end
  
  describe "#telangana_districts" do
    it "returns telangana districts" do
      ApDistrict.telangana_districts.should eq @telangana_districts
    end
  end

  describe "#andhra_districts" do
    it "returns andhra districts" do
      ApDistrict.andhra_districts.should eq @andhra_districts
    end
  end
end
