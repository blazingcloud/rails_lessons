require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe EchoController do
  describe "GET index" do
    it "renders" do
      get :index
      response.should render_template('echo/index')
    end
     
    it "renders with text param" do
      text = "something"
      get "index", {:text => text}
      assigns[:text].should == text
      response.should render_template('echo/index')
    end
  end
end
