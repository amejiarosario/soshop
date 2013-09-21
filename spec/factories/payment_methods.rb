# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment_method do
    association :user
    type ""
    options "MyText"
  end
end
