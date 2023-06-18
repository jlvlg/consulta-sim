class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates_presence_of :paciente
  validates_presence_of :medico
  validates_each :data do |record, attr, value|
    if value.nil?
      record.errors.add(attr, 'é um campo obrigatório')
    else
      record.errors.add(attr, 'deve ser futura') if value.change(offset: '-0300') < Time.now(in: '-0300').to_datetime
      record.errors.add(attr, 'deve acontecer em no máximo 20 anos') if value > DateTime.current.advance(years: 20)
    end
  end
end
