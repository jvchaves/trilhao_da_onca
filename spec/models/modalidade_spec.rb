require 'rails_helper'

RSpec.describe Modalidade, type: :model do
  it "valida com nome" do
    modalidade = Modalidade.new(nome: "moto")
    expect(modalidade).to be_valid
  end

  it "sem nome não é valida" do
    modalidade = Modalidade.new(nome: nil)
    expect(modalidade).not_to be_valid
  end

  it "com nome duplicado não é valida" do
    Modalidade.create(nome: 'moto')
    modalidade = Modalidade.new(nome: 'moto')
    expect(modalidade).not_to be_valid
  end
end
