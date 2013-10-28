namespace :data do
  
  desc 'create ap districts'
  task :create_districts => :environment do
    district_names = %w{ 
      Adilabad 
      Anantapur 
      Chittoor 
      East-Godavari 
      Guntur 
      Hyderabad 
      Cuddapah 
      Karimnagar 
      Khammam 
      Krishna 
      Kurnool 
      Mahbubnagar 
      Medak 
      Nalgonda 
      Nellore 
      Nizamabad 
      Prakasam 
      Rangareddy 
      Srikakulam 
      Vishakhapatnam 
      Vizianagaram 
      Warangal 
      West-Godavari }
    district_names.each do |name|
      name = name.sub('-', ' ')
      ApDistrict.create(name: name)
    end
  end

  desc 'create indian stages'
  task :create_states => :environment do
    district_names = %w{ 
      Andhra-Pradesh
      Arunachal-Pradesh
      Assam
      Bihar
      Chhattisgarh
      Goa
      Gujarat
      Haryana
      Himachal-Pradesh
      Jammu-and-Kashmir
      Jharkhand
      Karnataka
      Kerala
      Madhya-Pradesh
      Maharashtra
      Manipur
      Meghalaya
      Mizoram
      Nagaland
      Odisha
      Punjab
      Rajasthan
      Sikkim
      Tamil-Nadu
      Tripura
      Uttar-Pradesh
      Uttarakhand
      West-Bengal 

      Andaman-and-Nicobar-Islands
      Chandigarh
      Dadra-and-Nagar-Haveli
      Daman-and-Diu
      Lakshadweep
      National-Capital-Territory-of-Delhi
      Puducherry
    }
    district_names.each do |name|
      name = name.gsub('-', ' ')
      IndiaState.create(name: name)
    end
  end

  desc 'create survey'
  task :create_survey => :environment do

    1.times do
      pick = ['United', 'United', 'United', 'United', 'Separate', 'Separate', 'Separate', 'Separate', 'None'][rand(9)]
      gender = ['Male', 'Female'][rand(2)]
      year_of_birth = 1990
      country = ['India', 'India', 'India', 'India', 'United States', 'United States', 'United Kingdom'][rand(7)]
      state = ['Andhra Pradesh', 'Andhra Pradesh', 'Andhra Pradesh', 'Gujarat'][rand(4)]
      district = ['Hyderabad', 'Krishna'][rand(2)]

      Survey.create(
        pick: pick,
        gender: gender,
        year_of_birth: year_of_birth,
        country: country,
        india_state: state,
        ap_district: district,
        user_id: 1,
        text: 'dvcreate'
        )
    end

  end
end
