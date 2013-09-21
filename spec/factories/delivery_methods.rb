# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :delivery_method do
    association :user
    type ""
    options "MyText"
  end
end
