class Paciente < ApplicationRecord
  validates :nome,
            presence: true,
            length: {
              minimum: 3
            },
            format: {
              without: /\d/
            }
  validates :cpf,
            presence: true,
            uniqueness: true,
            length: {
              is: 11
            },
            format: {
              with: /\A\d+\z/
            }
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A\w+@\w+\.\w+\z/
            }
  validates :nascimento,
            presence: true,
            comparison: {
              less_than_or_equal_to: Date.today,
              greater_than: Date.new(1850)
            }
end
