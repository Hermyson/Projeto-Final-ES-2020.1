Feature: Paciente
  As Admin do sistema
  I whant to adicionar, mostrar, atualizar e remover pacientes
  So that eu nao quero fazer isso manualmente

  Scenario: cadastrar novo paciente corretamente
    Given estou logada no sistema como admin
    And o psicologo com o crp "1/234567"
    And eu estou na pagina de criacao de paciente
    When eu preencho o campo nome com 'Hermyson',cpf '01648696511',telefone '87981044102',email 'hermyson@msn.com',endereco 'rua Nilo Ferreira', estado civil 'Casado',quantidade de filho '1', historico de doencas 'não tenho',medicamentos ' não uso', e fumante 'Não',ingere alcool 'Não',psicologo 'Francisco'
    And eu clico em criar o paciente
    Then eu vejo que o paciente criado com sucesso