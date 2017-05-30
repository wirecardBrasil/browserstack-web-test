Feature: Create personal account

Background:
  Given I am on https://bem-vindo-sandbox.moip.com.br/

Scenario: Create successful personal account

  Then I should see title "Oi, tudo bem? Seja bem vindo ao"
  When I fill field nickname with "João Henrique"
  And select buttom start
  Then I should see title "Prazer, João Henrique!"
  When select option never sell
  Then I should see title "Você gostaria de utilizar o Moip para receber pagamentos para o seu negócio como..."
  When select option personal account
  Then I should see title "João Henrique, qual é o seu nome completo?"
  When fill field fullname with "João Henrique Souza Santos"
  When fill field e-mail
  And select buttom fill field e-mail pessoa fisica
  And select buttom enter
  Then I should see title "Qual é o número do seu CPF?"
  When I fill field cpf
  And select buttom enter
  Then I should see title "Qual é a sua data de nascimento?"
  When fill field birthday with "10/10/1990"
  And select buttom enter
  Then I should see title "Qual é o CEP da sua residência?"
  When fill field cep with "04705070"
  And fill field residence number with "100"
  And select buttom enter
  Then I should see title "Qual é o número do seu celular?"
  When fill field cellphone with "11 987651234"
  And select buttom enter
  Then I should see title "Qual é o nome completo da sua mãe?"
  When fill field mothers name with "Maria da Silva Sá"
  And select buttom fill field mothers name pessoa fisica
  And select buttom enter
  Then I should see title "Qual é a atividade principal do seu negócio?"
  When select our main activity
  And select buttom enter
  Then I should see title "Qual é o endereço do site por onde você vende seus produtos ou serviços?"
  When fill field website with "https://www.solucoessoftwarejh.com.br"
  And select buttom enter
  Then I should see title "Qual é a sua expectativa de faturamento mensal?"
  When select our billing expectation
  And select buttom enter
  Then I should see title "Escolha uma senha"
  When fill field password "moip@123"
  And select accept terms
  And select buttom complete registration
  Then I should see title "cadastro realizado"

Scenario: Select 3 options for internet sales profile

  When I fill field nickname with "João Henrique"
  And select buttom start
  Then I should see title "Prazer, João Henrique!"
  When select option never sell
  Then I should see title "Você gostaria de utilizar o Moip para receber pagamentos para o seu negócio como..."
  When select option back
  And select option seeing, but it is not my main activity
  Then I should see title "Você gostaria de utilizar o Moip para receber pagamentos para o seu negócio como..."
  When select option back
  And select option as my main activity
  Then I should see title "Você gostaria de utilizar o Moip para receber pagamentos para o seu negócio como..."

Scenario: Fill fullname with special characters

  When I fill field nickname with "João Henrique"
  And select buttom start
  When select option never sell
  And select option personal account
  And fill field fullname with "João Otávio de Sá Albuqüerque"
  Then I should see check validation
