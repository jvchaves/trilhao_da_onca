require 'rails_helper'

RSpec.describe Organizador, type: :model do
  before(:each) do
    @estado = Estado.create(nome:"Ceara", sigla: "CE")
    @cidade = Cidade.create(nome: "Jaguaribe", estado_id: @estado.try(:id))
    @organizador = Organizador.create(nome: "João Victor Chaves", email: "joao@example.com", telefone: "88981001078", cidade_id: @cidade.try(:id))
  end

  it "valido com nome, email, telefone e cidade" do
    expect(@organizador).to be_valid
  end

  it "Invalido caso falte qualquer um dos campos" do
    organizador = Organizador.new(nome: "Luan Gomes", email: "luan@example.com", telefone: nil, cidade_id: @cidade.try(:id))

    expect(organizador).not_to be_valid
  end

  it "Invalido caso email irregular" do
    organizador = Organizador.new(nome: "João Victor Chaves", email: "joao.example.com", telefone: "88990039546", cidade_id: @cidade.try(:id))
  
    expect(organizador).not_to be_valid
  end

  it "Invalido caso numero telefone irregular" do
    organizador = Organizador.new(nome: "João Victor Chaves", email: "joao.victor@example.com", telefone: "996100546", cidade_id: @cidade.try(:id))
  
    expect(organizador).not_to be_valid
  end
end
