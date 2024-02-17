class Cidade < ApplicationRecord
  has_one :estado
  validates :nome, :estado_id, presence: true
end
