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

  it "should have a boolean column for present" do
    p = Person.new(:last_name => "Lee", :first_name => "Sara")
    p.present = false
    p.save.should be_true
    p = Person.find(p.id)
    p.should_not be_present
  end

  describe "grade field" do
    attr_reader :p
    before do
      @p = Person.new(:first_name => "Bruce", :last_name => "Lee", :present => true, :grade => "A")
      p.should be_valid
    end

    it "should accept only the following letters as grades: A, B, C, D, F" do
      all_letters = ("A".."Z").to_a
      valid_grades = ["A", "B", "C", "D", "F"]
      invalid_grades = all_letters - valid_grades
      invalid_grades.each do |grade|
        p.grade = grade
        p.should_not be_valid
      end
      valid_grades.each do |grade|
        p.grade = grade
        p.should be_valid
      end
    end

    it "should accept either + or - in addition to a letter grade" do
      p.grade = "A+"
      p.should be_valid
      p.grade = "A-"
      p.should be_valid
      p.grade = "A++"
      p.should_not be_valid
      p.grade = "A~"
      p.should_not be_valid
    end

  end

  describe ".class_average" do
    before do
      Person.delete_all
      Person.count.should == 0
      Person.create(
        :first_name => "Bruce", 
        :last_name => "Lee", 
        :present => true, 
        :grade => "A"
      )
      Person.create(
        :first_name => "Betty", 
        :last_name => "Lee", 
        :present => true, 
        :grade => "B"
      )
    end

    it "should provide the average letter grade of everyone (rounding up)" do
      Person.class_average.should == "B+"
    end
  end
  


end
