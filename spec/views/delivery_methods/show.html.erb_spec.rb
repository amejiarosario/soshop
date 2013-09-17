require 'spec_helper'

describe "delivery_methods/show" do
  before(:each) do
    @delivery_method = assign(:delivery_method, stub_model(DeliveryMethod,
      :user => nil,
      :type => "Type",
      :options => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
  end
end
