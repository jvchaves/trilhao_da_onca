require 'rails_helper'

RSpec.describe Estado, type: :model do
  it "valida com nome e sigla" do
    estado = Estado.new(nome: "Ceara", sigla: "CE")
    expect(estado).to be_valid
  end

  it "sem nome e com sigla não é valida" do
    estado = Estado.new(nome: nil, sigla: "CE")
    expect(estado).not_to be_valid
  end

  it "sem sigla e com nome não é valida" do
    estado = Estado.new(nome: 'Ceara', sigla: nil)
    expect(estado).not_to be_valid
  end

  it "com nome duplicado não é valida" do
    Estado.create(nome: "Ceara", sigla: "CE")
    estado = Estado.new(nome: "Ceara", sigla: "SP")
    expect(estado).not_to be_valid
  end

  it "com sigla duplicada não é valida" do
    Estado.create(nome: "Ceara", sigla: "CE")
    estado = Estado.new(nome: "São Paulo", sigla: "CE")
    expect(estado).not_to be_valid
  end
end
