require 'spec_helper'

describe "list courses" do

  context "with 3 people" do
    before do
      Course.create(:name => 'Creative Writing', :description => 'Learn to write fiction.')
      Course.create(:name => 'Ruby on Rails', :description => 'Build awesome web applications.')
      Course.create(:name => 'American History', :description => "Those who don't know history are doomed to repeat it.")

      visit courses_path # index
    end

    it "displays list of course names and their descriptions" do
      # page.save_and_open_page
      page.should have_content('Creative Writing')
      page.should have_content('Ruby on Rails')
      page.should have_content('American History')
    end

    it "links to show page" do
      click_link 'Creative Writing'
      page.should have_content('Learn to write fiction.')
    end
  end

end
