# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment_method do
    user nil
    type ""
    options "MyText"
  end
end
