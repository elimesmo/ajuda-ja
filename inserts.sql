insert into cliente(cpf,email,senha,nome,endereco,numero) 
values("612.212.122-12","eligordo@gmail.com","gordo3221","Gordinho da Silva Pinto","Iraque, Rua lourenço, 85","82 99232-5342"), 
("602.455.773-92","jose@gmail.com","joselito123","jose da Silva","Tabuleiro, Rua ana, 55","82 99135-8342"),
("382.555.773-82","teo@gmail.com","teozinho123","teo dos santos","Tabuleiro, Rua fenando, 115","82 99232-5352");

insert into servidor(cpf,email,senha,nome,Horario_Disponivel,endereco,valor) 
values("313.114.316-90", "TONHO@GMAIL.COM","tonho2007","TONHO","6:00","Flexeiras, rua caçolinha", 200.00),
("333.224.367-70", "eli@GMAIL.COM","elimesmo666","eli","7:00", "Benedito, rua fernando lima", 150.00),
("353.114.877-70","sandro@GMAIL.COM","sandinho157","sandro","6:00", "Guilherme, Rua Calheiros", 100.00);

insert into profissao(nome,cod) values("imformatica", 1),
("professor", 2),
("mecanico", 3);

insert into pagamento(nome,cod) values("pix", 1),
("dinheiro", 2),
("cartão", 3);

insert into clienteServidor(fk_cliente_cpf, fk_servidor_cpf) values("612.212.122-12", "313.114.316-90");

insert into servidorPagamento(fk_pagamento_cod, fk_servidor_cpf) values(1, "313.114.316-90");

insert into servidorProfissao(fk_profissao_cod, fk_servidor_cpf) values(1, "313.114.316-90");