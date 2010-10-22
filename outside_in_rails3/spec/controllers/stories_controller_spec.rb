require 'spec_helper'

describe StoriesController do

  def mock_story(stubs={})
    (@mock_story ||= mock_model(Story).as_null_object).tap do |story|
      story.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all stories as @stories" do
      Story.stub(:all) { [mock_story] }
      get :index
      assigns(:stories).should eq([mock_story])
    end
  end

  describe "GET show" do
    it "assigns the requested story as @story" do
      Story.stub(:find).with("37") { mock_story }
      get :show, :id => "37"
      assigns(:story).should be(mock_story)
    end
  end

  describe "GET new" do
    it "assigns a new story as @story" do
      Story.stub(:new) { mock_story }
      get :new
      assigns(:story).should be(mock_story)
    end
  end

  describe "GET edit" do
    it "assigns the requested story as @story" do
      Story.stub(:find).with("37") { mock_story }
      get :edit, :id => "37"
      assigns(:story).should be(mock_story)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created story as @story" do
        Story.stub(:new).with({'these' => 'params'}) { mock_story(:save => true) }
        post :create, :story => {'these' => 'params'}
        assigns(:story).should be(mock_story)
      end

      it "redirects to the created story" do
        Story.stub(:new) { mock_story(:save => true) }
        post :create, :story => {}
        response.should redirect_to(story_url(mock_story))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved story as @story" do
        Story.stub(:new).with({'these' => 'params'}) { mock_story(:save => false) }
        post :create, :story => {'these' => 'params'}
        assigns(:story).should be(mock_story)
      end

      it "re-renders the 'new' template" do
        Story.stub(:new) { mock_story(:save => false) }
        post :create, :story => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested story" do
        Story.should_receive(:find).with("37") { mock_story }
        mock_story.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :story => {'these' => 'params'}
      end

      it "assigns the requested story as @story" do
        Story.stub(:find) { mock_story(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:story).should be(mock_story)
      end

      it "redirects to the story" do
        Story.stub(:find) { mock_story(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(story_url(mock_story))
      end
    end

    describe "with invalid params" do
      it "assigns the story as @story" do
        Story.stub(:find) { mock_story(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:story).should be(mock_story)
      end

      it "re-renders the 'edit' template" do
        Story.stub(:find) { mock_story(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested story" do
      Story.should_receive(:find).with("37") { mock_story }
      mock_story.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the stories list" do
      Story.stub(:find) { mock_story }
      delete :destroy, :id => "1"
      response.should redirect_to(stories_url)
    end
  end

end
