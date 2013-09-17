# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user nil
    delivery_method nil
    payment_method nil
    product nil
  end
end
