Feature: User
  As a Admim do sistema
  I want to criar uma conta, entrar e utilizar as rotas do protegidas
  So that eu nao tenha que fazer manualmente

  Scenario: cadastrar um novo usuario corretamente
    Given estou na pagina de login
    And eu clico em sign up
    When eu crio um usuario com o e email com 'admin@admin.com' e a senha '123456' e a confirmacao de senha '123456'
    And eu clico em criar o usuario
    Then eu vejo uma mensagem cadastrado com sucesso

  Scenario: cadastrar um novo usuario sem senha
    Given estou na pagina de login
    And eu clico em sign up
    When eu crio um usuario com o e email com 'admin@admin.com' e a senha '' e a confirmacao de senha ''
    And eu clico em criar o usuario
    Then eu vejo uma mensagem erro

  Scenario: cadastrar um novo usuario com senha menor
    Given estou na pagina de login
    And eu clico em sign up
    When eu crio um usuario com o e email com 'admin@admin.com' e a senha '12345' e a confirmacao de senha '12345'
    And eu clico em criar o usuario
    Then eu vejo uma mensagem menos de 6
