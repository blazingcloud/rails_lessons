require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Article do
  before do
    @valid_attributes = {:title => "Using the New Gem Bundler Today",
                         :url => "http://yehudakatz.com/2009/11/03/using-the-new-gem-bundler-today/",
                         :author => "Yehuda Katz",
                         :published_on => Date.new(2009, 11, 3)}

  end
  
  it "should be valid with valid attributes" do
    Article.new(@valid_attributes).should be_valid
    
  end

end
