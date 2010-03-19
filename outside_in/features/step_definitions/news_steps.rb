Given /^the following news:$/ do |news|
  News.create!(news.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) news$/ do |pos|
  visit news_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following news:$/ do |expected_news_table|
  expected_news_table.diff!(tableish('table tr', 'td,th'))
end
