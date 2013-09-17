require 'spec_helper'

describe User do
  it { should have_many :orders }
	it { should have_many :payment_methods }
  it { should have_many :delivery_methods }
end
