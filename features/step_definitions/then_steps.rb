Then(/^I should see check validation$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[6]/input").click
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/span[1]")
end

Then(/^I should see title "([^"]*)"$/) do |arg1|
  page.has_content?(arg1)
  page.has_content?(arg1)
end
