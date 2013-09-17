class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :delivery_method
  belongs_to :payment_method
  belongs_to :product

  validates :user, presence: true
  validates :product, presence: true
  validates :payment_method, presence: true
  validates :delivery_method, presence: true
end
