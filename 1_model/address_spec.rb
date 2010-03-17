require 'spec_helper'

describe Address do
    before(:each) do
      @valid_attributes = {
        :house_number => 1,
        :street => "Penny Lane",
        :city => "San Francisco",
        :state => "CA",
        :zip => "94132"
      }
    end
  describe "with valid attributes" do

    it "should create a new instance given valid attributes" do
      Address.create!(@valid_attributes)
    end
    it "should create a new instance given extended zip" do
      @valid_attributes[:zip] = "94132-4555"
      Address.create!(@valid_attributes)
    end

  end
  describe "with invalid attributes" do
    # let's pretend that house numbers like 1A don't exist
    # if you have time you can go back and change this to checking
    # if house_number starts with a number
    it "should require a house number to be a number" do
      invalid_attributes = @valid_attributes.merge(:house_number => "a")
      a = Address.new(invalid_attributes)
      a.should_not be_valid
    end

    it "should require a street" do
      invalid_attributes = @valid_attributes
      invalid_attributes.delete(:street)
      a = Address.new(invalid_attributes)
      a.should_not be_valid
    end

    it "should require a city" do
      invalid_attributes = @valid_attributes
      invalid_attributes.delete(:city)
      a = Address.new(invalid_attributes)
      a.should_not be_valid
    end

    it "should require the state to be no longer than two characters" do
      invalid_attributes = @valid_attributes.merge(:state => "test")
      a = Address.new(invalid_attributes)
      a.should_not be_valid
    end

    it "should require the state to be longer than one character" do
      invalid_attributes = @valid_attributes.merge(:state => "a")
      a = Address.new(invalid_attributes)
      a.should_not be_valid
    end

    describe "invalid zip code" do
      it "should reject a zip code that has letters" 
      it "should reject a zip code that is too long" 
      it "should have a dash plus 4 digits if longer than 5 digits"
    end
  end


  
end
