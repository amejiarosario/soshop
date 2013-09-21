# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    full_name     'Adrian Mejia'
    email         'test@adrianmejia.com'
    card_number   '411111111111'
    security_code '123'
    association   :user

    after :build do |order|
      order.product = create(:product, user: order.user)
      #order.delivery_method = create(:delivery_method, user: order.user)
      #order.payment_method = create(:payment_method, user: order.user)
    end
  end
end
