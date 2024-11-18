create database ServiçoEG;

use ServiçoEG;

create table cliente(
	cpf varchar(14),
	email varchar(50) unique,
    senha varchar(50),
    nome varchar(50),
    endereco varchar(50),
    numero varchar(50) unique,
    primary key(cpf)

);

create table servidor(
	cpf varchar(14) unique,
    nome varchar(50),
    Horario_Disponivel  varchar(50),
    email varchar(50) unique,
	endereco varchar(100),
	  numero varchar(50) unique,
	senha varchar(50),
    foto varchar(1000),
    valor double,
    primary key(cpf)
    
);

create table Profissao(

    nome varchar(50),
    cod int,
    primary key(cod)

);

create table  pagamento(
 nome varchar(50),
	cod int,
    primary key(cod)

);



create table clienteServidor (

	fk_cliente_cpf varchar(14),
 	fk_servidor_cpf varchar(14),
	foreign key(fk_cliente_cpf) references cliente(cpf),
    foreign key(fk_servidor_cpf) references servidor(cpf),
    primary key(fk_cliente_cpf, fk_servidor_cpf)
   

);



create table servidorPagamento (

	fk_pagamento_cod int,
 	fk_servidor_cpf varchar(14),
	foreign key(fk_pagamento_cod) references pagamento(cod),
    foreign key(fk_servidor_cpf) references servidor(cpf),
    primary key(fk_pagamento_cod, fk_servidor_cpf)

);

create table servidorProfissao (

	fk_Profissao_cod int,
 	fk_servidor_cpf varchar(14),
	foreign key(fk_servidor_cpf) references servidor(cpf),
    foreign key(fk_Profissao_cod) references Profissao(cod),
    primary key(fk_servidor_cpf, fk_Profissao_cod)

);


