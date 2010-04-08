require 'spec_helper'

describe HobbyOrigin do
  before(:each) do
    @valid_attributes = {
      :story => "once upon a time.."
    }
  end

  it "should create a new instance given valid attributes" do
    HobbyOrigin.create!(@valid_attributes)
  end

  it "should have one hobby" do
    h = HobbyOrigin.new(@valid_attributes)
    h.hobby.should be_nil
  end
end
