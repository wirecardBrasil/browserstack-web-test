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
  When fill field mothers name with "Maria da Silva"
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

Scenario: Fill mothers name with special characters

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option personal account
  And fill field fullname with "João Henrique Souza Santos"
  And fill field e-mail
  And select buttom fill field e-mail pessoa fisica
  And select buttom enter
  And I fill field cpf
  And select buttom enter
  And fill field birthday with "10/10/1990"
  And select buttom enter
  And fill field cep with "04705070"
  And fill field residence number with "100"
  And select buttom enter
  And fill field cellphone with "11 987651234"
  And select buttom enter
  When fill field mothers name with "Maria da Silva Sá Aragão Calçada"
  And select buttom fill field mothers name pessoa fisica
  Then I should see check validation mothers name

Scenario: Fill e-mail with plus

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option personal account
  And fill field fullname with "João Henrique Souza Santos"
  And fill field e-mail with plus "jh+solucoes@mailinator.com"
  And select buttom fill field e-mail pessoa fisica
  Then I should see title "Opa João Henrique! Esse não é um e-mail válido."

  Scenario: Fill field cellphone valid and field residencial invalid

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option personal account
  And fill field fullname with "João Henrique Souza Santos"
  And fill field e-mail
  And select buttom fill field e-mail pessoa fisica
  And select buttom enter
  And I fill field cpf
  And select buttom enter
  And fill field birthday with "10/10/1990"
  And select buttom enter
  And fill field cep with "04705070"
  And fill field residence number with "100"
  And select buttom enter
  And fill field cellphone with "11 987651234"
  And fill field residencial phone with "11 9876512"
  And select buttom fill field phones
  Then I should see alert "Ei João Henrique, este não é um número válido."

Scenario: Fill field cellphone invalid and field residencial valid

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option personal account
  And fill field fullname with "João Henrique Souza Santos"
  And fill field e-mail
  And select buttom fill field e-mail pessoa fisica
  And select buttom enter
  And I fill field cpf
  And select buttom enter
  And fill field birthday with "10/10/1990"
  And select buttom enter
  And fill field cep with "04705070"
  And fill field residence number with "100"
  And select buttom enter
  And fill field cellphone with "11 9876512"
  And fill field residencial phone with "11 987651212"
  And select buttom fill field phones
  Then I should see alert "Ei João Henrique, este não é um número válido."

Scenario: Cep invalid

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option personal account
  And fill field fullname with "João Henrique Souza Santos"
  And fill field e-mail
  And select buttom fill field e-mail pessoa fisica
  And select buttom enter
  And I fill field cpf
  And select buttom enter
  And fill field birthday with "10/10/1990"
  And select buttom enter
  And fill field cep with "00000000"
  And fill field street with "Rua ABC"
  And fill field residence number invalid cep with "100"
  And fill field neighborhood with "Lindolândia"
  And fill field city with "São Paulo"
  And fill field uf with "SP"
  And select buttom enter
  And fill field cellphone with "11 987651234"
  And select buttom enter
  And fill field mothers name with "Maria da Silva"
  And select buttom fill field mothers name pessoa fisica
  And select buttom enter
  And select our main activity
  And select buttom enter
  And fill field website with "https://www.solucoessoftwarejh.com.br"
  And select buttom enter
  And select our billing expectation
  And select buttom enter
  And fill field password "moip@123"
  And select accept terms
  And select buttom complete registration
  Then I should see title "cadastro realizado"
