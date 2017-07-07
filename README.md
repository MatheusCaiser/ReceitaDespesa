# Acompanhamento Financeiro #

Aplicação CRUD para registrar despesas e receitas financeiras

### Requisitos ###

* Container WEB (Tomcat, Jboss)
* Base de dados PostgreSQL -> É preciso configurar com a conexão do banco o arquivo .properties na pasta resources
* Onde BD_URL -> endereço do banco
* Onde BD_NAME -> nome da database

### Como instalar ###

* Clone o repositorio
* Entre na pasta do projeto
* Execute na linha de comando 

	mvn clean package
	
* Na pasta target copie o arquivo .war na pasta de deployments do container
* Execute na no browser o contexto da aplicação, por exemplo, http://localhost:8080/ReceitaDespesa-0.0.1-SNAPSHOT

### Desenvolverdor ###

* Matheus Henrique Caiser Barrozo