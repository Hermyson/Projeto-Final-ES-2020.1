Feature: Psicologo
  As a psicologo do sistema
  I want to criar conta, visualizar e editar
  So that eu nao tenha que fazer manualmente

  Scenario: criar novo psicologo
    Given eu estou logada no sistema com email 'admin@admin.com' e senha '123456'
    And eu estou na pagina de novo psicologo
    When eu crio um pcicologo com o crp '1234567' e o nome 'Francisco'
    And eu clico em criar psicologo
    Then eu vejo o psicologo criado com sucesso

  Scenario: criar novo psicologo com crp invalido
    Given eu estou logada no sistema com email 'admin@admin.com' e senha '123456'
    And eu estou na pagina de novo psicologo
    When eu crio um pcicologo com o crp '123' e o nome 'Francisco'
    And eu clico em criar psicologo
    Then eu vejo uma mensagem de que tem no minimo 7

  Scenario: remover psicologo
    Given eu estou logada no sistema com email 'admin@admin.com' e senha '123456'
    And o psicologo com crp '1234567' existe
    And eu estou na pagina de perfil do psicologo
    When eu clico em remover psicologo
    Then eu vejo uma mensage psicologo deletado com sucesso
