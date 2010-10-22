require 'spec_helper'

describe Story do
  before do
    @valid_attrs = { :title => "Breaking News", 
                     :content => "Earthquake in California" }
  end

  it "is valid with valid attributes" do
    Story.new(@valid_attrs).should be_valid
  end

  it "must have a title" do
    @invalid = @valid_attrs
    @invalid.delete(:title)
    Story.new(@invalid).should_not be_valid
  end
  
  it "must have a content field" do
    @invalid = @valid_attrs
    @invalid.delete(:content)
    Story.new(@invalid).should_not be_valid
  end

end
