Then(/^I should see check validation$/) do
  sleep 1
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/span[2]")
end
