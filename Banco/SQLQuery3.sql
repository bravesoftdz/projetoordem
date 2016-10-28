create database DB_OS

drop database DB_OS

use DB_OS

use master

CREATE TABLE Clientes(
	tipo varchar(50) not null,
	id_cliente integer identity(1,1),
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
	PRIMARY KEY (id_cliente)
	)

CREATE TABLE Funcionarios(
	id_funcionario integer identity(1,1),
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
	PRIMARY KEY (id_funcionario)
)


CREATE TABLE Ordem_Servicos(
	num_os int identity(1,1),
	id_cliente int not null,
	id_funcionario int not null,
	descri_equipamento varchar(250) not null,
	data_inicio varchar(9) not null,
	data_termino varchar(9) not null,
	observacoes varchar(250) not null,
	serie_equipamento varchar(50) not null,
	status_ordem varchar(50),
	valor_produtos float not null,
	valor_total float not null,
	PRIMARY KEY (num_os),
	CONSTRAINT FK_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente),
	CONSTRAINT FK_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id_funcionario)
)

CREATE TABLE Produtos(
	id_produto int identity(1,1),
	preco float not null,
	especificacoes varchar(250) not null,
	marca varchar(50) not null,
	quantidade int not null,
	PRIMARY KEY (id_produto)
)

CREATE TABLE Servicos(
	id_servico int identity(1,1),
	tipo_servico varchar(50) not null,
	preco float not null,
	PRIMARY KEY (id_servico)
)

CREATE TABLE ServicosXOrdem(
	id_servico int not null,
	num_os int not null,
	CONSTRAINT PK_ServicoXOrdem PRIMARY KEY (id_servico, num_os),
	CONSTRAINT FK_ServicoXOrdem2 FOREIGN KEY (id_servico) REFERENCES Servicos (id_servico),
	CONSTRAINT FK_ServicoXOrdem3 FOREIGN KEY (num_os) REFERENCES Ordem_Servicos (num_os),
)

CREATE TABLE ProdutosXOrdem(
	id_produto int not null,
	num_os int not null,
	valor_unit float not null,
	quant int not null,
	valor_total float not null,
	nome_produto varchar not null, 
	CONSTRAINT PK_ProdutoXOrdem PRIMARY KEY (id_produto, num_os),
	CONSTRAINT FK_ProdutoXOrdem2 FOREIGN KEY (id_produto) REFERENCES Produtos (id_produto),
	CONSTRAINT FK_ProdutoXOrdem3 FOREIGN KEY (num_os) REFERENCES Ordem_Servicos (num_os),
)
