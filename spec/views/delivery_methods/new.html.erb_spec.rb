require 'spec_helper'

describe "delivery_methods/new" do
  before(:each) do
    assign(:delivery_method, stub_model(DeliveryMethod,
      :user => nil,
      :type => "",
      :options => "MyText"
    ).as_new_record)
  end

  it "renders new delivery_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", delivery_methods_path, "post" do
      assert_select "input#delivery_method_user[name=?]", "delivery_method[user]"
      assert_select "input#delivery_method_type[name=?]", "delivery_method[type]"
      assert_select "textarea#delivery_method_options[name=?]", "delivery_method[options]"
    end
  end
end
