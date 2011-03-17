require 'spec_helper'

describe PeopleController do
  before do
    @emmy = Person.create! :first_name => "Emmy", :last_name => "Noether"
    @marie = Person.create! :first_name => "Marie", :last_name => "Curie"
    @lise = Person.create! :first_name => "Lise", :last_name => "Meitner"   
  end

  describe "GET index" do 
    before do
      get :index
    end
    it "renders" do
      response.should render_template(:index) 
    end
    it "sets up the whole list of people" do
      assigns[:people].should == [@emmy, @marie, @lise]
    end
  end

  describe "POST create" do
    before do
      Person.where(:first_name => "Barbara", :last_name => "Liskov").first.should be_nil    
    end
    describe "with valid data" do
      before do
        post :create, :person => {:first_name => "Barbara", :last_name => "Liskov"}      
        @barbara = Person.where(:first_name => "Barbara", :last_name => "Liskov").first
      end

      it "creates a person record" do
        @barbara.should_not be_nil
      end

      it "redirects" do
        response.should redirect_to person_path(@barbara)
      end
    end
    describe "with invalid data" do
      before do
        @total_people = Person.count
        post :create, :person => {:first_name => "Barbara"}         
      end
      it "does not create a person" do
        Person.count.should == @total_people
      end
      it "should render new template" do
        response.should render_template(:new)
      end
    end
  end

  describe "GET new" do
    before do
      get :new
    end
    it "should render new page" do
      response.should render_template(:new)
    end
    it "assigns a new record" do
      assigns[:person].should be_new_record
    end
  end

  describe "GET edit" do
    before do
      get :edit, :id => @emmy.id
    end
    it "should render edit page" do
      response.should render_template(:edit)
    end
    it "assigns a the emmy record" do
      assigns[:person].should == @emmy
    end
  end

  describe "PUT update" do
    describe "with valid attributes" do
      before do
        put :update, {:id => @emmy.id, :person => {:last_name => "Lou Harris"}}
      end
      it "updates the record" do
        @emmy.reload
        @emmy.last_name.should == "Lou Harris"
      end    
      it "redirects to show page" do
          response.should redirect_to person_path(@emmy)      
      end
    end
    describe "with invalid attributes" do
      before do
        put :update, {:id => @emmy.id, :person => {:last_name => ""}}
      end
      it "should not update the record" do
        @emmy.reload
        @emmy.last_name.should_not == ""
      end
      it "should render to edit page" do
        response.should render_template(:edit)
      end
    end
  end

  describe "DELETE destroy" do
    before do
      delete :destroy, {:id => @emmy}
    end
    it "should destroy the record" do
      Person.find_by_id(@emmy.id).should be_nil
    end
    it "should redirect to people page" do
      response.should redirect_to people_path
    end
  end
end


