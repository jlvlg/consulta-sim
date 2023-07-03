require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  setup do
    @paciente = pacientes(:one)
    @paciente.endereco = enderecos(:one)
  end

  test 'paciente_valido' do
    assert @paciente.save
  end

  test 'paciente_vazio' do
    model = Paciente.new
    assert_not model.save
  end
end
