When /^I fill in "([^\"]*)" found by "([^\"]*)" with "([^\"]*)"$/ do |value, type, keys|
  fill_in(value, :with => keys)
end

When /^I submit$/ do
  find_field('q').native.send_key(:enter)
end

When(/^I fill field nickname with "([^"]*)"$/) do |nickname|
  find(:xpath, "//*[@id=\"signin-view\"]/section/div/div[1]/p[3]/input").set(nickname)
  sleep 2
end

When(/^select buttom start$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/div/div[1]/button").click
  sleep 2
end

When(/^select option never sell$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/ul/li[1]/span[2]").click
  sleep 2
end

When(/^select option legal account$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/ul/li[2]/span[2]").click
  sleep 2
end

When(/^fill field e\-mail legal account$/) do
  @value = "jh_#{rand(10000)}@mailinator.com"
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(@value)
end

When(/^select buttom fill field e-mail$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[5]/button").click
end

When(/^select buttom enter$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/div/div/span").click
end

When(/^fill field fancy name with "([^"]*)"$/) do |fancyname|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(fancyname)
end

When(/^select buttom fill field$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[4]/button").click
end

When(/^select buttom fill field phones$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[6]/button").click
end

When(/^select buttom fill field e-mail pessoa fisica$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[7]").click
end

When(/^select buttom fill field mothers name pessoa fisica$/) do
  sleep 2
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[5]/button").click
end

When(/^fill field social name with "([^"]*)"$/) do |socialname|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(socialname)
end

When(/^fill field cnpj$/) do
  @cnpj = CNPJ.generate
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(@cnpj)
  sleep 2
end

When(/^select our main activity$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div/div[2]/input").set("Roupas / Acessórios")
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div/div[2]/input").native.send_keys(:return)
end

When(/^fill field website with "([^"]*)"$/) do |website|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(website)
end

When(/^fill field cep with "([^"]*)"$/) do |cep|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section/div/section/input").set(cep)
  sleep 1
end

When(/^fill field residence number with "([^"]*)"$/) do |number|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section/div[2]/div[1]/section/input").set(number)
end

When(/^fill field residence number invalid cep with "([^"]*)"$/) do |number|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[1]/div[2]/div[1]/section[2]/input").set(number)
end

When(/^fill field cellphone with "([^"]*)"$/) do |cellphone|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[5]/input").set(cellphone)
end

When(/^fill field residencial phone with "([^"]*)"$/) do |residencial_phone|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[5]/input").set(residencial_phone)
end

When(/^select our form of incorporation of your company$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div/div").click
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div/div").native.send_keys(:arrow_down)
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div/div").native.send_keys(:enter)
end

When(/^fill field opening date with "([^"]*)"$/) do |openingdate|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[3]/div/section[2]/input").set(openingdate)
end

When(/^fill field name of legal representative of your company with "([^"]*)"$/) do |representative|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(representative)
end

When(/^fill field cpf of legal representative$/) do
  @cpf = CPF.generate
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/section[3]/input").set(@cpf)
end

When(/^fill field birthday of legal representative with "([^"]*)"$/) do |birthday|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[3]/section[2]/input").set(birthday)
end

When(/^fill field cep of legal account with "([^"]*)"$/) do |legalcep|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section/div/section/input").set(legalcep)
sleep 1
end

When(/^fill field residence number of legal representative with "([^"]*)"$/) do |legalnumber|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section/div[2]/div[1]/section/input").set(legalnumber)
end

When(/^fill field mothers name of legal representative "([^"]*)"$/) do |mother|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(mother)
end

When(/^fill field cellphone of legal representative "([^"]*)"$/) do |legalcellphone|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/input").set(legalcellphone)
end

When(/^fill field password "([^"]*)"$/) do |password|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section/div[3]/div/input").set(password)
end

When(/^select accept terms jur$/) do
  find(:css, "section div.col-10.sm-col-12.no-padding-left div input").native.send_keys(:tab)
  sleep 1
  find(:css, "section div.col-10.sm-col-12.no-padding-left div input").native.send_keys(:tab)
  find(:xpath, "//*[@id=\"accept-terms-enterprise\"]").native.send_keys(:space)
end

When(/^select accept terms$/) do
  find(:xpath, "//*[@id=\"accept-terms-personal\"]").native.send_keys(:tab)
  sleep 1
  find(:xpath, "//*[@id=\"accept-terms-personal\"]").native.send_keys(:space)
end

When(/^select buttom complete registration$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/button").click
end

When(/^fill field cnpj invalid$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set('58316000000000')
end

When(/^fill field cnpj already registered$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set('58316000000185')
end

When(/^select option personal account$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/ul/li[1]/span[2]").click
end

When(/^fill field fullname with "([^"]*)"$/) do |name|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(name)
end

When(/^fill field e\-mail$/) do
  @value = "jh_#{rand(1000)}@mailinator.com"
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[6]/input").set(@value)
end

When(/^fill field e-mail with plus "([^"]*)"$/) do |email|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[6]/input").set(email)
end

When(/^I fill field cpf$/) do
  @cpf = CPF.generate
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(@cpf)
  sleep 2
end

When(/^fill field birthday with "([^"]*)"$/) do |birthday|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(birthday)
end

When(/^fill field mothers name with "([^"]*)"$/) do |mothers_name|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[3]/input").set(mothers_name)
end

When(/^select our billing expectation$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/div[2]/div").native.send_keys(:tab)
end

When(/^select option back$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[1]/header/div[2]/div[2]/button[1]/span[2]").click
end

When(/^select option seeing, but it is not my main activity$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/ul/li[2]/span[2]").click
end

When(/^select option as my main activity$/) do
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[2]/ul/li[3]/span[2]").click
end

When(/^fill field street with "([^"]*)"$/) do |street|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[1]/div[2]/div[1]/section[1]/input").set(street)
end

When(/^fill field neighborhood with "([^"]*)"$/) do |neighborhood|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[1]/div[2]/div[2]/section[2]/input").set(neighborhood)
end

When(/^fill field city with "([^"]*)"$/) do |city|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[1]/div[2]/div[3]/section[1]/input").set(city)
end

When(/^fill field uf with "([^"]*)"$/) do |uf|
  find(:xpath, "//*[@id=\"signin-view\"]/section/section[2]/div/div[2]/section[1]/div[2]/div[3]/section[2]/input").set(uf)
end
