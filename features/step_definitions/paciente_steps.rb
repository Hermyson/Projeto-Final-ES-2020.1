Given('estou logada no sistema como admin') do
  visit 'users/sign_in'
  fill_in 'user[email]', :with => 'admin@admin.com'
  fill_in 'user[password]', :with => '123456'

  click_button 'Log in'

end
And('o psicologo com o crp {string}') do |crp|
  visit '/psicologos'
  fill_in 'psicologo[crp]',with: crp
  fill_in 'psicologo[nome]',with: 'Francisco'
  click_button 'cadastro-psicologo'
end

And('eu estou na pagina de criacao de paciente') do
  visit "/pacientes/new"
end

When('eu preencho o campo nome com {string},cpf {string},telefone {string},email {string},endereco {string}, estado civil {string},quantidade de filho {string}, historico de doencas {string},medicamentos {string}, e fumante {string},ingere alcool {string},psicologo {string}') do |string, string2, string3, string4, string5, string6, string7, string8, string9, string10,string11,string12|
  visit "/pacientes/new"
  fill_in 'paciente[nome]', :with => string
  fill_in 'paciente[cpf]', with: string2
  fill_in 'paciente[telefone]', with: string3
  fill_in 'paciente[email]', with: string4
  fill_in 'paciente[endereco]', with: string5
  fill_in 'paciente[historico_doencas]', with: string6
  fill_in 'paciente[medicamentos]', with: string7
  select string8, from: 'paciente[estado_civil]'
  fill_in 'paciente[quantidade_filhos]', with: string9
  select string10, from: 'paciente[e_fumante]'
  select string11, from: 'paciente[ingere_alcool]'
  select string12, from: 'paciente.psicologo_id'
  click_button 'cadastro-paciente'
end

And('eu clico em criar o paciente') do
  click_button 'cadastro-paciente'
end

Then('eu vejo que o paciente criado com sucesso') do 
  expect(page).to have_content('Paciente was successfully created.')
end
