require "spec_helper"

describe StoriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/stories" }.should route_to(:controller => "stories", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/stories/new" }.should route_to(:controller => "stories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/stories/1" }.should route_to(:controller => "stories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/stories/1/edit" }.should route_to(:controller => "stories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/stories" }.should route_to(:controller => "stories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/stories/1" }.should route_to(:controller => "stories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/stories/1" }.should route_to(:controller => "stories", :action => "destroy", :id => "1")
    end

  end
end
