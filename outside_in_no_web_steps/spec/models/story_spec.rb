require 'spec_helper'

describe Story do
  it "should have a title" do
  	story = Story.new
  	story.should respond_to('title')
  end
end
