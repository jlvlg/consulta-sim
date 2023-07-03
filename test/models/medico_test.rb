require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  setup do
    @medico = medicos(:one)
  end

  test 'medico_sem_nome' do
    medico = @medico.dup
    medico.nome = nil
    assert_not medico.save
  end

  test 'medico_cpf_invalido' do
    medico = @medico.dup
    medico.cpf = 'abcdefghij'
    assert_not medico.save
  end
end
