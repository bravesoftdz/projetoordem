create database DB_OS

drop database DB_OS

use DB_OS

CREATE TABLE Clientes(
	tipo varchar(50) not null,
	id integer identity(1,1),
	nome_razao varchar(50) not null,
	cpf_cnpj varchar(18) not null unique,
	rg_ie varchar(15),
	data_nasc varchar(10),
	endereco varchar(50) not null,
	cep varchar(9) not null,
	bairro varchar(50) not null,
	cidade varchar(50) not null,
	estado char(2) not null,
	telefone varchar(18)not null,
	celular varchar(19),
	email varchar(50),
	PRIMARY KEY (id)
	)

CREATE TABLE Funcionarios(
	id integer identity(1,1),
	cargo varchar(50) not null,
	nome_func varchar(50) not null,
	cpf varchar(14) not null unique,
	rg varchar(15) unique,
	data_nasc varchar(10),
	endereco varchar(50) not null,
	cep varchar(9) not null,
	bairro varchar(50) not null,
	cidade varchar(50) not null,
	estado char(2) not null,
	telefone varchar(18)not null,
	celular varchar(19),
	email varchar(50),
	PRIMARY KEY (id)
)


CREATE TABLE Ordem_Servicos(
	numero int identity(1,1),
	id_cliente int,
	id_funcionario int,
	descri_equipamento varchar(250),
	data_inicio varchar(10),
	data_termino varchar(10),
	observacoes varchar(250),
	serie_equipamento varchar(50),
	status_ordem varchar(50),
	valor_produtos float,
	valor_total float,
	PRIMARY KEY (numero),
	CONSTRAINT FK_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
	CONSTRAINT FK_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id)
)

CREATE TABLE Solucao(
	id int identity(1,1),
	preco float not null,
	especificacoes varchar(250) not null,
	marca varchar(50),
	quantidade int not null,
	tipo varchar(50),
	PRIMARY KEY (id),
)

CREATE TABLE SolucaoXOrdem(
	id_solucao int not null,
	num_os int,
	valor_unit float not null,
	valor_total float not null,
	quant int not null,
	descricao varchar,
	CONSTRAINT PK_ProdutoXOrdem PRIMARY KEY (id_solucao, num_os),
	CONSTRAINT FK_ProdutoXOrdem2 FOREIGN KEY (id_solucao) REFERENCES solucao (id),
	CONSTRAINT FK_ProdutoXOrdem3 FOREIGN KEY (num_os) REFERENCES Ordem_Servicos (numero),
)