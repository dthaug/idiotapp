require 'spec_helper'

describe "dilemmas/show" do
  before(:each) do
    @dilemma = assign(:dilemma, stub_model(Dilemma,
      :Description => "Description",
      :TotalVotes => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
