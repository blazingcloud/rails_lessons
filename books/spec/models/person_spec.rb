require 'spec_helper'

describe Person do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :address => "value for address"
    }
  end

  it "should create a new instance given valid attributes" do
    Person.create!(@valid_attributes)
  end

  it "should have many books" do
    Person.new.should respond_to :books
  end

  it "should have many books" do
    Person.new.books.should == []
  end
end
