require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Person do
  it 'should have first and last name' do
    p = Person.new(:first_name => "Eve", :last_name => "Smith")
    p.first_name.should == "Eve"
    p.last_name.should == "Smith"
  end

  describe "addresses" do
    it 'should have many addresses' do
      pending
      p = Person.new(:first_name => "Eve", :last_name => "Smith")
      p.should respond_to :addresses
    end
    
    it 'should have no addresses in a new record' do
      pending
      p = Person.new(:first_name => "Eve", :last_name => "Smith")
      p.addresses.should be_empty
    end

    it 'should allow creation of an address' do
      pending
      p = Person.create!(:first_name => "Eve", :last_name => "Smith")
      lambda {
        p.addresses.create!(:street => "10 Green St.", :city => "San Francisco", :state => "CA")  
      }.should change(Address, :count).by(1)
      p.addresses.first.city.should == "San Francisco"
    end
  end

  describe "phones" do
    it 'should have many phone numbers ' do
      p = Person.new(:first_name => "Eve", :last_name => "Smith")
      p.should respond_to :phones
    end

    it 'should allow creation of a phone number' do
      pending
      p = Person.create!(:first_name => "Eve", :last_name => "Smith")
      lambda {
        p.phones.create!(:number => "415-555-1345")
      }.should change(Phone, :count).by(1)
      p.phones.first.number.should == "415-555-1345"
    end
  end

end




