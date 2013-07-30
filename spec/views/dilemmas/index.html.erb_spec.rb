require 'spec_helper'

describe "dilemmas/index" do
  before(:each) do
    assign(:dilemmas, [
      stub_model(Dilemma,
        :Description => "Description",
        :TotalVotes => 1
      ),
      stub_model(Dilemma,
        :Description => "Description",
        :TotalVotes => 1
      )
    ])
  end

  it "renders a list of dilemmas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
