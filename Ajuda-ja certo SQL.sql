
create database ajudaJa;

use ajudaJa;

create table cliente(
	cpf varchar(20),
	email varchar(100) unique,
    senha varchar(50),
    nome varchar(100),
    endereco varchar(100),
    numero varchar(50) unique,
    primary key(cpf)

);

create table servidor(
	cpf varchar(20) ,
    nome varchar(100),
    Horario_Disponivel  varchar(50),
	endereco varchar(100),
    email varchar(100) unique,
	senha varchar(50),
    valor double,
    
    primary key(email)

);

create table Profissao(

    nome varchar(100),
    cod int,
    primary key(cod)

);

create table  pagamento(
 nome varchar(100),
	cod int,
    primary key(cod)

);


create table clienteServidor (

	fk_cliente_cpf varchar(20),
 	fk_servidor_email varchar(100),
	foreign key(fk_cliente_cpf) references cliente(cpf),
    foreign key(fk_servidor_email) references servidor(email),
    primary key(fk_cliente_cpf, fk_servidor_email)

);


create table servidorPagamento (

	fk_pagamento_cod int,
 	fk_servidor_email varchar(100),
	foreign key(fk_pagamento_cod) references pagamento(cod),
    foreign key(fk_servidor_email) references servidor(email),
    primary key(fk_pagamento_cod, fk_servidor_email)

);

create table servidorProfissao (

	fk_Profissao_cod int,
 	fk_servidor_email varchar(100),
	foreign key(fk_servidor_email) references servidor(email),
    foreign key(fk_Profissao_cod) references Profissao(cod),
    primary key(fk_servidor_email, fk_Profissao_cod)

);
