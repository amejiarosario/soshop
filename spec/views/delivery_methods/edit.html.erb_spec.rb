require 'spec_helper'

describe "delivery_methods/edit" do
  before(:each) do
    @delivery_method = assign(:delivery_method, stub_model(DeliveryMethod,
      :user => nil,
      :type => "",
      :options => "MyText"
    ))
  end

  it "renders the edit delivery_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", delivery_method_path(@delivery_method), "post" do
      assert_select "input#delivery_method_user[name=?]", "delivery_method[user]"
      assert_select "input#delivery_method_type[name=?]", "delivery_method[type]"
      assert_select "textarea#delivery_method_options[name=?]", "delivery_method[options]"
    end
  end
end
