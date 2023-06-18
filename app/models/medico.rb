class Medico < ApplicationRecord
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
  validates :especialidade,
            presence: true,
            length: {
              minimum: 2,
              maximum: 50
            }
  validates :crm,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A\d{6,9}[a-zA-Z]{2}\z/
            }
end
