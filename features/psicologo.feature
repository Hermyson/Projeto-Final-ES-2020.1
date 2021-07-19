Feature: Psicologo
  As a psicologo do sistema
  I want to criar conta, visualizar e editar
  So that eu nao tenha que fazer manualmente

  Scenario: criar novo psicologo
    Given eu estou logada no sistema como admin
    And eu estou na pagina de criacao de psicologo
    When eu crio um pcicologo com o crp '1/234567' e o nome 'Francisco'
    And eu clico em criar psicologo
    Then eu vejo o psicologo criado com sucesso
