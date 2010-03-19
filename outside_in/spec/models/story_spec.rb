require 'spec_helper'

describe Story do
  before(:each) do
      
    @valid_attributes = {
      :title => "Headline News",
      :content => "story"
    }

  end

  it "should create a new instance given valid attributes" do
    Story.create!(@valid_attributes)
  end

  describe "invalid attributes" do
    it "should not allow blank title" do
      s = Story.new(:content =>"xxx")
      s.should_not be_valid

    end


  end


end
