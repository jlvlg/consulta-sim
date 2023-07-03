Given('o medico existe') do
  visit new_medico_path
  fill_in 'Nome', with: 'abc'
  fill_in 'Cpf', with: '12345678900'
  fill_in 'Email', with: 'a@b.c'
  fill_in 'Especialidade', with: 'ab'
  fill_in 'Crm', with: '123456ab'
  click_button 'Create Medico'
  expect(page).to have_content('Medico was successfully created.')
end

Given('estou na pagina do medico') do
  visit medico_path(Medico.find_by_crm('123456ab'))
  expect(page).to have_content('Crm: 123456ab')
end

When('eu clico para remover o medico') do
  click_button 'Destroy this medico'
end

Then('eu vejo uma mensagem que o medico foi removido com sucesso') do
  expect(page).to have_content('Medico was successfully destroyed.')
end

When('eu clico para voltar') do
  click_link 'Back to medicos'
end

Then('eu sou redirecionado para a pagina anterior') do
  expect(page).to have_selector 'h1', text: 'Medicos'
end
