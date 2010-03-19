require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Book do
  it 'should have title and year published' do
    b = Book.new(:title => "Oliver Twist", :year => 1838)
    b.title.should == "Oliver Twist"
    b.year.should == 1838
  end

  describe "authors" do
    it 'should have many authors' do
      pending
      b = Book.new(:title => "Oliver Twist", :year => 1838)
      b.should respond_to :authors
    end

    it 'should have no authors in a new record' do
      pending
      b = Book.new(:title => "Oliver Twist", :year => 1838)
      b.authors.should be_empty
    end

    it 'should allow creation of an author' do
      pending
      b = Book.new(:title => "Oliver Twist", :year => 1838)
      lambda {
        b.authors.create!(:first_name => "Charles", :last_name => "Dickens")  
      }.should change(Person, :count).by(1)
      b.authors.first.last_name.should == "Dickens"
    end
  end
end





