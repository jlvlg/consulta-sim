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
    record.errors.add(attr, 'é obrigatório') if value.nil? || value.strip.empty?
    record.errors.add(attr, 'deve ter no mínimo 2 caracteres') if value.nil? || value.length < 2
    record.errors.add(attr, 'formato inválido') if value.nil? || (value =~ /\A\w+\z/).nil?
  end
end
