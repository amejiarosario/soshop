require 'spec_helper'

describe "credit_cards/edit" do
  before(:each) do
    @credit_card = assign(:credit_card, stub_model(CreditCard,
      :first_name => "MyString",
      :last_name => "MyString",
      :number => "MyString",
      :month => "MyString",
      :year => "MyString",
      :ccv => "MyString"
    ))
  end

  it "renders the edit credit_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", credit_card_path(@credit_card), "post" do
      assert_select "input#credit_card_first_name[name=?]", "credit_card[first_name]"
      assert_select "input#credit_card_last_name[name=?]", "credit_card[last_name]"
      assert_select "input#credit_card_number[name=?]", "credit_card[number]"
      assert_select "input#credit_card_month[name=?]", "credit_card[month]"
      assert_select "input#credit_card_year[name=?]", "credit_card[year]"
      assert_select "input#credit_card_ccv[name=?]", "credit_card[ccv]"
    end
  end
end
