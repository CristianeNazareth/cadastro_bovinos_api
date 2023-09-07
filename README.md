# CADASTRO DE BOVINOS LEITEIROS

Cadastro de Bovinos

A aplicacao tem um formulario no front que faz a busca aqui na api para cadastrar bovinos no Bando de dados SQLite3 e devolve a lista com filtro.

## Instruções de Uso


1. Clone o repositório.
2. Execute `bundle install` para instalar as dependências.
3. Configure o arquivo `config/database.yml` com as configurações do seu banco de dados.
4. Execute `rails db:create` e `rails db:migrate` para criar o banco de dados.
5. Inicie o servidor Rails com `rails server` ou no meu caso `bin/rails server`. O rails está rodando na porta [http://localhost:3000](http://localhost:3000) .


## Dependências

- Rails 7.0.7
- Ruby 2.7.6
- RMV 1.29.12
- Yarn 1.22.19
- SQLite3

### Bando de Dados

Após fazer os testes, pode rodar os códigos rails db:drop, rails db:create e rails db:migrate para apagar, recriar e fazer as migracoes para o banco.

#### Autora

Cristiane Nazaret Assunção



