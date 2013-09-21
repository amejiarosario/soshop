require 'spec_helper'

describe Order do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :payment_method_id }
  it { should validate_presence_of :delivery_method_id }
  it { should validate_presence_of :product_id }
end
