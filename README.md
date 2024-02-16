# Trilhão da Onça - Sistema de Gerenciamento de Inscrições

O Trilhão da Onça é um evento offroad para ciclistas e motociclistas que atrai entusiastas de todo o Brasil. Este projeto consiste em um sistema de gerenciamento de inscrições desenvolvido em Ruby 3 e Rails 7 para facilitar o processo de inscrição e gestão dos participantes.

## Funcionalidades Principais

- **Cadastro de Participantes:** Permita que os organizadores do evento cadastrem os participantes manualmente.
- **Gestão de Inscrições:** Visualize e gerencie todas as inscrições dos participantes.
- **Administração do Evento:** Recursos para os organizadores do evento gerenciarem inscrições, incluindo adicionar, editar ou remover participantes.
- **Relatórios de Inscrições:** Gere relatórios para acompanhar o número total de inscrições e outras estatísticas relevantes.

## Pré-requisitos

- Ruby 3
- Rails 7
- Banco de Dados PostgreSQL.

## Instalação

1. Clone este repositório para o seu ambiente local.

git clone https://github.com/jvchaves/trilhao_da_onca.git


2. Instale as dependências do projeto.

bundle install


3. Configure o banco de dados editando o arquivo `config/database.yml`.

4. Execute as migrações do banco de dados.

rails db:create db:migrate db:seed


5. Inicie o servidor Rails.

rails s



6. Acesse o sistema em `http://localhost:3000`.


## Idealizador do Projeto

Este projeto foi idealizado por [João Victor Chaves](https://github.com/jvchaves).

## Licença

Este projeto é licenciado sob a [MIT License](LICENSE).
