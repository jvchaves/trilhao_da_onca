class Organizador < ApplicationRecord
  has_one :cidade

  validates :nome, :email, :cidade_id, :telefone, presence: true
  validates :email, :telefone, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :telefone, format: { with: /\A\d{2}9\d{8}\z/ }
end
