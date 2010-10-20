require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Person do
  it 'should have first and last name' do
    p = Person.new(:first_name => "Eve", :last_name => "Smith")
    p.first_name.should == "Eve"
    p.last_name.should == "Smith"
  end
  
  it 'should construct a full name' do
    p = Person.new(:first_name => "Eve", :last_name => "Smith")
    p.full_name.should == "Eve Smith"
  end
  
  it 'should save a valid record with first_name and last name' do
    p = Person.new(:first_name => "Eve", :last_name => "Smith")
    p.should be_valid
  end

  it 'should not save a record with only first name' do
    p = Person.new(:first_name => "Eve")
    p.should_not be_valid
    p.errors[:last_name].should include("can't be blank")
  end

  it 'should not save a record with only last name' do
    p = Person.new(:last_name => "Smith")
    p.should_not be_valid
    p.errors[:first_name].should include("can't be blank")
  end

end
