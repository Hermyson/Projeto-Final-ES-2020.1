Given('eu estou logada no sistema como admin') do
  visit '/users/sign_in'
  fill_in 'user[email]',:with => "admin@admin.com"
  fill_in 'user[password]', :with => "123456"
  click_button 'Log in'

end

And('eu estou na pagina de criacao de psicologo') do
  visit "/psicologos/new"
  expect(page).to have_current_path("/users/sign_in")
end
When('eu crio um pcicologo com o crp {string} e o nome {string}') do |crp, nome|

  fill_in "crp", :with => crp
  fill_in "nome", :with => nome

end

And('eu clico em criar psicologo') do
   click_button 'cadastro-psicologo'
end
Then('eu vejo o psicologo criado com sucesso') do 
  expect(page).to have_content('Psicologo was successfully created.')
end