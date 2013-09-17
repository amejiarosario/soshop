# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    first_name "MyString"
    last_name "MyString"
    number "MyString"
    month "MyString"
    year "MyString"
    ccv "MyString"
  end
end
