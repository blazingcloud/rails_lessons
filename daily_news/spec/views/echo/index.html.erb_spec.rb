require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/echo/index" do
  it "should echo text" do
    assign(:text, "something")
    render
    rendered.should match(/something/)
  end

end

