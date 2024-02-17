class Estado < ApplicationRecord
  has_many :cidades
  validates :nome, :sigla, presence: true, uniqueness: true
end
