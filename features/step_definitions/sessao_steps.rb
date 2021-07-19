And('eu estou na pagina de criacao da sessao') do
  visit '/sessaos/new'
end
When ('eu preencho a data com {string}, {string} e {string}, a hora com {string} e {string} minutos e seleciono o paciente {string},psicologo {string}') do |dia, mes, ano, hora, minutos, paciente,psicologo|
  select dia, from: 'sessao_data_3i'
  select mes, from: 'sessao_data_2i'
  select ano, from: 'sessao_data_1i'
  select hora, from: 'sessao_hora_4i'
  select minutos, from: 'sessao_hora_5i'
  select paciente, from: 'sessao_paciente_id'
  select psicologo, from: 'sessao_psicologo_id'
end
And ('eu clico em criar sessao') do
  click_button 'cadastrar-sessao'
end
Then('eu vejo a mensagem sessao criada com sucesso') do
  expect(page).to have_content('Sessao was successfully created.')
end