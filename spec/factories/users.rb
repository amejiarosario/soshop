FactoryGirl.define do
  factory :user do
  	sequence(:email) {|n| "person#{n}.#{Time.now.to_i}@example.com" }
  	password "password"
  end
end
