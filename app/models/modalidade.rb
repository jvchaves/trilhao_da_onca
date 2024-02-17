class Modalidade < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
end
