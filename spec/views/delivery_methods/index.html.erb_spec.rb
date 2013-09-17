require 'spec_helper'

describe "delivery_methods/index" do
  before(:each) do
    assign(:delivery_methods, [
      stub_model(DeliveryMethod,
        :user => nil,
        :type => "Type",
        :options => "MyText"
      ),
      stub_model(DeliveryMethod,
        :user => nil,
        :type => "Type",
        :options => "MyText"
      )
    ])
  end

  it "renders a list of delivery_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
