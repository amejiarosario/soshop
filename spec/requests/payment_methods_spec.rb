require 'spec_helper'

describe "PaymentMethods" do
  describe "GET /payment_methods" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get payment_methods_path
      response.status.should be(200)
    end
  end
end
