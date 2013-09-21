class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :delivery_method
  belongs_to :payment_method
  belongs_to :product

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :payment_method_id, presence: true
  validates :delivery_method_id, presence: true
end
