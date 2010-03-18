require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Address do
    before(:each) do
      @valid_attributes = {
        :label => "home",
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

  
end
