Given(/^I am on the home page$/) do
  visit("/")
end

When(/^I click on the "(.*?)" tag with url "(.*?)"$/) do |arg1, arg2|
 page.has_xpath('//arg1["/#{arg2}"]')
end

Then(/^I should be taken to the url "(.*?)"$/) do |arg1|
  visit "/#{arg1}"
end 