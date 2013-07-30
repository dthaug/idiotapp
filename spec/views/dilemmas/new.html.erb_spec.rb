require 'spec_helper'

describe "dilemmas/new" do
  before(:each) do
    assign(:dilemma, stub_model(Dilemma,
      :Description => "MyString",
      :TotalVotes => 1
    ).as_new_record)
  end

  it "renders new dilemma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dilemmas_path, "post" do
      assert_select "input#dilemma_Description[name=?]", "dilemma[Description]"
      assert_select "input#dilemma_TotalVotes[name=?]", "dilemma[TotalVotes]"
    end
  end
end
