FactoryGirl.define do
  factory :user do
    email     "user@example.com"
    password  "foobarfoo"
    password_confirmation "foobarfoo"
  end
end