require 'spec_helper'

describe Book do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :page_count => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Book.create!(@valid_attributes)
  end
end
