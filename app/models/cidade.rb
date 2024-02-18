class Cidade < ApplicationRecord
  has_one :estado
  has_many :organizadors
  
  validates :nome, :estado_id, presence: true
end
