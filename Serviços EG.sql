<<<<<<< HEAD
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
    Horario_Disponivel_entrada  varchar(50),
    Horario_Disponivel_saida varchar(50),
    email varchar(50) unique,
    endereco varchar(100),
    senha varchar(50),
    foto varchar(1000),
    valor double,
    numero varchar(50) unique,
    primary key(cpf)
    
);

create table Profissao(

    nome varchar(50),
    cod int,
    primary key(cod)

);

create table formasPagamento(
	nome varchar(50),
	cod int,
    primary key(cod)

);

CREATE TABLE pagamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    cliente_cpf varchar(14) , 
    servidor_cpf varchar(14) ,
    valor double,               
    data_pagamento timestamp,            
    descricao TEXT,                      
    FOREIGN KEY (cliente_cpf) REFERENCES cliente(cpf),
	FOREIGN KEY (servidor_cpf) REFERENCES servidor(cpf) 
);




create table clienteServidor (

	fk_cliente_cpf varchar(14),
 	fk_servidor_cpf varchar(14),
	foreign key(fk_cliente_cpf) references cliente(cpf),
    foreign key(fk_servidor_cpf) references servidor(cpf),
    primary key(fk_cliente_cpf, fk_servidor_cpf)
   

);



create table servidorFormasPagamento (

	fk_formasPagamento_cod int,
 	fk_servidor_cpf varchar(14),
	foreign key(fk_formasPagamento_cod) references formasPagamento(cod),
    foreign key(fk_servidor_cpf) references servidor(cpf),
    primary key(fk_formasPagamento_cod, fk_servidor_cpf)

);

create table servidorProfissao (

	fk_Profissao_cod int,
 	fk_servidor_cpf varchar(14),
	foreign key(fk_servidor_cpf) references servidor(cpf),
    foreign key(fk_Profissao_cod) references Profissao(cod),
    primary key(fk_servidor_cpf, fk_Profissao_cod)

);

=======
# Quando for tal email aparecerar uma senha relacionada aquele email (Tela de usuario)
SELECT senha FROM cliente where email = "jose@gmail.com";
SELECT senha FROM servidor where email = "TONHO@GMAIL.COM";	

#Quando você for pesqueisar uma profissão (tela de buscar serviços)
SELECT 
    s.nome, p.nome, s.foto
FROM
    servidor s
        INNER JOIN
    servidorProfissao sp ON s.cpf = sp.fk_servidor_cpf
        INNER JOIN
    Profissao p ON sp.fk_Profissao_cod = p.cod;
    
    
# tela do perfil de profissão

SELECT 
    s.nome, s.endereco, s.Horario_Disponivel, p.nome
FROM
    servidor s
    inner join
    servidorProfissao sp on s.cpf = fk_servidor_cpf
    inner join
     Profissao p ON sp.fk_Profissao_cod = p.cod;

    


>>>>>>> f95ab4bd74ac25967b037818cbd291960e62e67a

