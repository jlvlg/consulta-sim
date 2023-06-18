class Endereco < ApplicationRecord
  belongs_to :paciente
  validates :cep,
            presence: true,
            length: {
              is: 8
            },
            format: {
              with: /\A\d+\z/
            }
  validates_each :cidade, :bairro, :logradouro, :complemento do |record, attr, value|
    if value.nil? || value.split.empty?
      record.errors.add(attr, 'é obrigatório')
    else
      record.errors.add(attr, 'deve ter no mínimo 2 caracteres') if value.length < 2
      record.errors.add(attr, 'deve ter no máximo 200 caracteres') if value.length > 200
    end
  end
end
