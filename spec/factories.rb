FactoryGirl.define do
  factory :user do
    email     "user@example.com"
    password  "foobarfoo"
    password_confirmation "foobarfoo"
  end

  factory :content do
    key     "key"
    value   "value"
  end

  factory :survey do
    pick           "United"
    gender         "Male"
    year_of_birth  2000
    country        "India"
    india_state    "Andhra Pradesh"
    ap_district    "Krishan"
  end

  factory :news_article do
  end
end