require 'spec_helper'

describe Order do
  it { should validate_presence_of :user }
  it { should validate_presence_of :payment_method }
  it { should validate_presence_of :delivery_method }
  it { should validate_presence_of :product }
end
