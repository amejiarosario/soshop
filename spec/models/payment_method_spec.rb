require 'spec_helper'

describe PaymentMethod do
  it { should validate_presence_of :user }
end
