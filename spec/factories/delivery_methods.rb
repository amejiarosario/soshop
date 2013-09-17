# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :delivery_method do
    user nil
    type ""
    options "MyText"
  end
end
