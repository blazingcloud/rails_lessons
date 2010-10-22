require 'spec_helper'

describe "stories/edit.html.erb" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :new_record? => false,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit story form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => story_path(@story), :method => "post" do
      assert_select "input#story_title", :name => "story[title]"
      assert_select "textarea#story_content", :name => "story[content]"
    end
  end
end
