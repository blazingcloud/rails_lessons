require 'spec_helper'

describe Person do
  before(:each) do
    @valid_attributes = {
      :name => "value for name"
    }
  end

  it "should create a new instance given valid attributes" do
    Person.create!(@valid_attributes)
  end
  
  it "should have many hobby_origins" do
    person = Person.create!(@valid_attributes)
    person.hobby_origins.should be_empty
  end
  
  it "should have many hobbies" do
    person = Person.create!(@valid_attributes)
    person.hobbies.should be_empty    
  end
end
