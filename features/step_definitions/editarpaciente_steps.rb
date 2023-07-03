Given('o paciente existe') do
  visit new_paciente_path
  fill_in 'Nome', with: 'abc'
  fill_in 'Cpf', with: '12345678900'
  fill_in 'Email', with: 'a@b.c'
  fill_in 'Nascimento', with: '1900-01-01'
  fill_in 'Cep', with: '12345678'
  fill_in 'Cidade', with: 'abc'
  fill_in 'Bairro', with: 'abc'
  fill_in 'Logradouro', with: 'abc'
  fill_in 'Complemento', with: 'abc'
  click_button 'Create Paciente'
  expect(page).to have_content('Paciente was successfully created.')
end

Given('estou na pagina do paciente') do
  visit paciente_path(Paciente.find_by_cpf('12345678900'))
  expect(page).to have_content('Cpf: 12345678900')
end

Given('clico em editar paciente') do
  click_link 'Edit this paciente'
end

Given('preencho o formulario corretamente') do
  fill_in 'Cpf', with: '00987654321'
end

When('eu envio o formulario') do
  click_button 'Update Paciente'
end

Then('eu vejo uma mensagem que o paciente foi alterado com sucesso') do
  expect(page).to have_content('Paciente was successfully updated.')
end

Given('preencho o formulario incorretamente') do
  fill_in 'Cpf', with: 'abcdefghij'
end

Then('eu vejo uma mensagem que um campo foi preenchido incorretamente') do
  expect(page).to have_content('Cpf is invalid')
end
