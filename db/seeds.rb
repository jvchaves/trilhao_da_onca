# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
["moto", "bicicleta"].each do |gerar_modalidade|
  Modalidade.find_or_create_by!(nome: gerar_modalidade)
end

response_api_estados = ::Apis::IbgeEstados::new().execute

response_api_estados.each do |estado|
  Estado.find_or_create_by!(nome:estado["nome"], sigla: estado["sigla"] )
end

response_api_cidades = ::Apis::IbgeCidades::new().execute

response_api_cidades.each do |cidade|
  estados = Estado.all
  estado_cidade = cidade["regiao-imediata"]["regiao-intermediaria"]["UF"]
  Cidade.find_or_create_by!(nome:cidade["nome"], estado_id: estados.find_by(nome:estado_cidade["nome"], sigla: estado_cidade["sigla"] ).try(:id))
end