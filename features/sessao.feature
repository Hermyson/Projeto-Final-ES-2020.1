Feature: Sessao
  As a admin do sistema
  I whant to adicionar, mostrar, atualizar e remover sessao
  So that eu nao quero fazer isso manualmente

  Scenario: cadastrar nova sessao
    Given Given estou logada no sistema como admin
    And o paciente com nome 'Hermyson',cpf '01648696511',telefone '87981044102',email 'hermyson@msn.com',endereco 'rua Nilo Ferreira', estado civil 'Casado',quantidade de filho '1', historico de doencas 'não tenho',medicamentos ' não uso', e fumante 'Não',ingere alcool 'Não'
    And o psicologo com o crp '1/234567' e o nome 'Francisco'
    And eu estou na pagina de criacao da sessao
    When eu preencho a data com '20', 'março' e '2022', a hora com '10' e '20' minutos e seleciono o paciente 'Hermyson',psicologo 'Francisco'
    And eu clico em criar sessao
    Then eu vejo a mensagem sessao criada com sucesso