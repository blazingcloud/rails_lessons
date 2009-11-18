require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/echo/index" do
  it "should echo text" do
    pending
    assigns[:text] = "something"
    render
    response.body.should match /something/
  end

end

