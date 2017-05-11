Feature: Create legal account

Background:
  Given I am on https://bem-vindo-sandbox.moip.com.br/

Scenario: Create successful personal account

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option legal account
  And fill field e-mail legal account
  And select buttom validate
  And select buttom enter
  And fill field fancy name with "Soluções de Software JH"
  And select buttom enter
  And fill field social name with "Soluções Integradas de Software LTDA"
  And select buttom enter
  And fill field cnpj
  And select buttom enter
  And select our main activity
  And select buttom enter
  And fill field website with "https://www.solucoessoftwarejh.com.br"
  And select buttom enter
  And fill field cep with "06050170"
  And fill field residence number with "100"
  And select buttom enter
  And fill field cellphone with "11 987651234"
  And select buttom enter
  And select our form of incorporation of your company
  And fill field opening date with "01/05/2016"
  And select buttom enter
  And fill field name of legal representative of your company with "João Henrique Albuquerque"
  And select buttom enter
  And fill field cpf of legal representative
  And fill field birthday of legal representative with "10/10/1990"
  And select buttom enter
  And fill field cep of legal account with "04714000"
  And fill field residence number of legal representative with "1000"
  And select buttom enter
  And fill field mothers name of legal representative "Maria da Silva Sá"
  And select buttom enter
  And fill field cellphone of legal representative "11 912345678"
  And select buttom enter
  And fill field password "moip@123"
  And select accept terms jur
  And select buttom complete registration
  Then I should see title "cadastro realizado"

Scenario: Fill cnpj invalid

  When I fill field nickname with "João Henrique"
  And select buttom start
  And select option never sell
  And select option legal account
  And fill field e-mail legal account
  And select buttom validate
  And select buttom enter
  And fill field fancy name with "Soluções de Software JH"
  And select buttom enter
  And fill field social name with "Soluções Integradas de Software LTDA"
  And select buttom enter
  And fill field cnpj invalid
  Then I should see title "Ei João Henrique, esse não é um CNPJ válido."

Scenario: Fill cnpj already registered

When I fill field nickname with "João Henrique"
And select buttom start
And select option never sell
And select option legal account
And fill field e-mail legal account
And select buttom validate
And select buttom enter
And fill field fancy name with "Soluções de Software JH"
And select buttom enter
And fill field social name with "Soluções Integradas de Software LTDA"
And select buttom enter
And fill field cnpj already registered
Then I should see title "João Henrique, esse CNPJ já está cadastrado no Moip."
