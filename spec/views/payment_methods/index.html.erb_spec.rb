require 'spec_helper'

describe "payment_methods/index" do
  before(:each) do
    assign(:payment_methods, [
      stub_model(PaymentMethod,
        :user => nil,
        :type => "Type",
        :options => "MyText"
      ),
      stub_model(PaymentMethod,
        :user => nil,
        :type => "Type",
        :options => "MyText"
      )
    ])
  end

  it "renders a list of payment_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
