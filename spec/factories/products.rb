FactoryGirl.define do
	factory :product do
		title "Product title"
		price 10.0
		association :user
	end
end