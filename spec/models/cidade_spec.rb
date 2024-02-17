require 'rails_helper'

RSpec.describe Cidade, type: :model do
  it "valida com nome e estado" do
    estado = Estado.find_or_create_by(nome: 'Ceara', sigla: "CE")
    cidade = Cidade.new(nome: "Jaguaribe", estado_id: estado.try(:id))
    expect(cidade).to be_valid
  end

  it "não é valida sem nome e com estado" do
    estado = Estado.find_or_create_by(nome: 'Ceara', sigla: "CE")
    cidade = Cidade.new(nome: nil, estado_id: estado.try(:id))
    expect(cidade).not_to be_valid
  end

  it "não é valida sem estado e com nome" do
    cidade = Cidade.new(nome: 'Jaguaribe', estado_id: nil)
    expect(cidade).not_to be_valid
  end

  it "não é valida sem estado e sem nome" do
    cidade = Cidade.new(nome: nil, estado_id: nil)
    expect(cidade).not_to be_valid
  end
end
