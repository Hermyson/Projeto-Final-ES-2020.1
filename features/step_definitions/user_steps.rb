Given('estou na pagina de login') do
    visit '/users/sign_in'
end
And('eu clico em sign up') do
  click_link 'Sign up'
  visit '/users/sign_up'
end

When("eu crio um usuario com o e email com {string} e a senha {string} e a confirmacao de senha {string}") do |email, senha, confirmar_senha|
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => confirmar_senha
  check 'user[roles][]'


end
And('eu clico em criar o usuario') do
  click_button 'Sign up'
end


Then ('eu vejo uma mensagem cadastrado com sucesso') do
  expect(page).to have_content("Welcome! You have signed up successfully.")
end

Then ('eu vejo uma mensagem erro') do
  expect(page).to have_content("Password can't be blank")
end

Then ('eu vejo uma mensagem menos de 6') do
  expect(page).to have_content("Password is too short (minimum is 6 characters)")
end
