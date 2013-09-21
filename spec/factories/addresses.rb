# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street_line1 "MyString"
    stree_line2 "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    country "MyString"
  end
end
