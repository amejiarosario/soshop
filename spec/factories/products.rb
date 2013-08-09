FactoryGirl.define do
	factory :product do
		sequence(:title){|n| "Product #{n}" }
		price 10.0
		association :user
		photo { fixture_file_upload "#{Rails.root}/spec/fixtures/product.jpg", 'image/jpeg' }
	end
end
