require 'spec_helper'

describe "Managing assignments from a course page" do
  describe "When viewing a course" do
    attr_reader :course
    before do
      @course = Course.create!(:name => 'Creative Writing', :description => 'Learn to write fiction.')
      course.assignments.create!(
        :description => "a conversation with your mother",
        :assigned_on => Date.civil(2010,1,2),
        :due_on => Date.civil(2010,1,15)
      )      
      course.assignments.create!(
        :description => "walking on the beach you see a man",
        :assigned_on => Date.civil(2010,1,2),
        :due_on => Date.civil(2010,1,29)
      )      
      course.assignments.create!(
        :description => "why the yeti cries at dawn",
        :assigned_on => Date.civil(2010,1,2),
        :due_on => Date.civil(2010,1,22)
      )      
      visit "/courses/#{course.id}"
    end

    it "should show assignments in date order" do
      assignment_info = page.all('ul li').map {|node| node.text.strip}
      assignment_info.should == [
        '2010-01-15: a conversation with your mother',
        '2010-01-22: why the yeti cries at dawn',
        '2010-01-29: walking on the beach you see a man'
      ]
    end

    describe "and clicking on a link to create a new assignment" do
      before do
        click_link "Create a new assignment"
      end

      it "should have a header that describes the course that the new assignment will be created for" do
        page.find('h1').text.should == "New assignment for Creative Writing"
      end

      describe "and submitting the form with valid data" do
        before do
          @title = "In the mountains, you are beguiled by mysterious music" 
          fill_in "Description", :with => @title
          select "2010", :from => 'assignment_assigned_on_1i'
          select "February", :from => "assignment_assigned_on_2i"
          select "5", :from => "assignment_assigned_on_3i"
          click_button "Create Assignment"
        end

        it "should create the assignment" do
          Assignment.find_by_description(@title).should_not be_nil
        end

        it "should display the course page with the new assignment" do
          current_path.should == "/courses/#{course.id}"
          page.should have_content("In the mountains, you are beguiled by mysterious music")
        end
      end
    end

    describe "and clicking on an assignment" do
      before do
        click_link "2010-01-15: a conversation with your mother"
      end

      it "should display the edit page for the assignment" do
        page.should have_content("Editing assignment") 
      end

      describe "and submitting valid changes for the assignment" do
        before do
          @assignment_id = current_path.match(/(\d+)\/edit/)[1]
          @count = Assignment.count
          @title = "After a stranger delivers a letter to your mother, she cries and then tells you a story that you had never heard before"
          fill_in "Description", :with => @title
          click_button "Update Assignment"
        end

        it "should save the changes" do
          a = Assignment.find(@assignment_id)
          a.should be_present
          a.description.should == @title
        end

        it "should display the course page with the changes" do
          current_path.should == "/courses/#{course.id}"
          page.should have_content(@title)
          page.should have_no_content("a conversation with your mother")
        end
      end

    end
  end
end
