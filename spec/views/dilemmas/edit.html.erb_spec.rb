require 'spec_helper'

describe "dilemmas/edit" do
  before(:each) do
    @dilemma = assign(:dilemma, stub_model(Dilemma,
      :Description => "MyString",
      :TotalVotes => 1
    ))
  end

  it "renders the edit dilemma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dilemma_path(@dilemma), "post" do
      assert_select "input#dilemma_Description[name=?]", "dilemma[Description]"
      assert_select "input#dilemma_TotalVotes[name=?]", "dilemma[TotalVotes]"
    end
  end
end
