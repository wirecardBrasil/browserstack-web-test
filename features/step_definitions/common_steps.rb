Given /^I am on (.*)$/ do |url|
  visit url
end

Then /^I should see "([^\"]*)"$/ do |body|
  expect(page).to have_text body
end
