# Desafio-dev
  Uma aplicação para gerenciar transições por arquivo CNAB

### 🛠️ Stack 
 - Docker Compose
 - Ruby v3.0
 - Rails v7
 - Postgres v13.2
 - Redis v6.2.1
 - Sidekiq 7.1.0
 - S3

### ⚙️ Configurações 
Para rodar o projeto você vai precisar ter instalado o docker

### 🚀 Inicializando o projeto 
1º Clone o repositório

2º Ative os containers do projeto
```
$ docker-compose up
```

3º setup do projeto rails 

 - Instale as dependências `bundle install.`
 - Crie o banco de dados  `db:create`.
 - Rode as migrações com o comando `rails db:migrate`.
 - Inicie o servidor com o comando `rails server`.
 - Inicie Sidekiq com o comando `bundle exec sidekiq`.


✨ O projeto está rodando e pode ser acessado http://localhost:3000/

### ⚡Como testar   
  Os teste foram escrito com ajuda do [rspec](https://rspec.info/)

 Para rodar os teste 
```
$ rspec 
```
