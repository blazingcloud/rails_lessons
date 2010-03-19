require 'spec_helper'

describe "/people/index.html.erb" do
  include PeopleHelper

  before(:each) do
    assigns[:people] = [
      stub_model(Person,
        :name => "Matt",
        :address => "16 Penny Lane"
      ),
      stub_model(Person,
        :name => "Anil",
        :address => "34 Rocket Street"
      )
    ]
  end

  it "renders a list of people" do
    render
    response.should have_tag("li", /Matt, 16 Penny Lane/, 1)
    response.should have_tag("li", /Anil, 34 Rocket Street/, 1)
  end
end
