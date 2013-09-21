FactoryGirl.define do

  sequence(:price) {|n| Random.rand(100000)/100.0 }

	factory :product do
		sequence(:title){|n| "Product #{n}" }
    sequence(:description) {|n| LoremIpsum::Generator.new.generate({words: Random.rand(5)}) }
		price { generate :price }
		association :user
		stock 1
		photo { fixture_file_upload "#{Rails.root}/spec/fixtures/product.jpg", 'image/jpeg' }
	end
end
