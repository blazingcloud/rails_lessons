Given /^I am on the home page$/ do
	visit '/'
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end

Given /^I follow "(.*?)"$/ do |arg1|
  click_link arg1
end

Given /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

Given /^I press "(.*?)"$/ do |arg1|
  click_button arg1
end

Then /^I should be on the home page$/ do
  URI.parse(current_url).path.should eq '/'
end