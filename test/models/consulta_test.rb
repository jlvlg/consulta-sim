require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  setup do
    @consulta = consultas(:one)
  end

  test 'consulta_data_passada' do
    consulta = @consulta.dup
    consulta.data = DateTime.new(1900)
    assert_not consulta.save
  end

  test 'consulta_sem_medico' do
    consulta = @consulta.dup
    consulta.medico = nil
    assert_not consulta.save
  end
end
