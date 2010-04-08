require 'spec_helper'

describe "/people/index.html.erb" do
  include PeopleHelper

  before(:each) do
    assigns[:people] = [
      stub_model(Person,
        :name => "value for name"
      ),
      stub_model(Person,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of people" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
