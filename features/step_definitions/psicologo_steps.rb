
Given('eu estou logada no sistema com email {string} e senha {string}') do |email,senha|
  visit '/users/sign_in'
  fill_in 'user[email]',:with => email
  fill_in 'user[password]', :with => senha
  click_button 'Log in'

end

Given('eu estou na pagina de novo psicologo') do
  visit '/psicologos/new'

end

When('eu crio um pcicologo com o crp {string} e o nome {string}') do |crp, nome|
  visit '/psicologos/new'
  fill_in 'crp', :with => crp
  fill_in 'nome', :with => nome

end

And('eu clico em criar psicologo') do
   click_button 'submit'
end
Then('eu vejo o psicologo criado com sucesso') do 
  expect(page).to have_content('Psicologo was successfully created.')
end
Then('eu vejo uma mensagem de que tem no minimo 7') do
  expect(page).to have_content('Crp is too short (minimum is 7 characters)')
end
Then('eu vejo uma mensage psicologo deletado com sucesso') do
  expect(page).to have_content('Psicologo was successfully destroyed.')
end
And('eu estou na pagina de perfil do psicologo')do
  visit '/psicologos/1'
end
When ('eu clico em remover psicologo') do
  click_link 'delete'
end