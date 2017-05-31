Then(/^I should see check validation$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[7]/button").click
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/span[1]")
end

Then(/^I should see check validation mothers name$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/span[1]")
end


Then(/^I should see title "([^"]*)"$/) do |title|
  page.has_content?(title)
  page.has_content?(title)
end

Then(/^I should see alert "([^"]*)"$/) do |alert|
page.has_content?(alert)
end
