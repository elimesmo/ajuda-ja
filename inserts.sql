
insert into cliente(cpf,email,senha,nome,endereco,numero) 
values("612.212.122-12","eligordo@gmail.com","gordo3221","Gordinho da Silva Pinto","Iraque, Rua lourenço, 85","82 99232-5342"), 
("602.455.773-92","jose@gmail.com","joselito123","jose da Silva","Tabuleiro, Rua ana, 55","82 99135-8342"),
("382.555.773-82","teo@gmail.com","teozinho123","teo dos santos","Tabuleiro, Rua fenando, 115","82 99232-5352"),
("122.975.123-82","ljsm@gmail.com","jhonson132","LIndonjhonson da Silva Machado","Tabuleiro, Rua fenando, 95","82 99876-5122"),
("192.761.093-70","Narc12@gmail.com","ciso8132","Adonai Roberto de Oliveira Narciso","Flexeiras, Rua lins, 45","82 97890-1542"),
("134.921.012-50","DHL@gmail.com","dhs.lima@gmail.com","David Henrique de Souza Lima","Flexeiras, Rua caçolinha, 75","82 92376-3422"),
("809.231.023-06","ciço34@gmail.com","ciço9032","José cicero dos Santos","Flexeiras,Rua Nova Flexeiras, 90","82 91276-0987");




insert into servidor(cpf,email,senha,nome,Horario_Disponivel,endereco,valor) 
values("313.114.316-90", "TONHO@GMAIL.COM","tonho2007","TONHO","6:00","Flexeiras, Rua caçolinha", 200.00 ),
("333.224.367-70", "eli@GMAIL.COM","elimesmo666","eli","7:00", "Benedito, rua fernando lima", 150.00),
("353.114.877-21","sandro@GMAIL.COM","sandinho157","sandro","6:00", "Guilherme, Rua Calheiros", 100.00),
("309.198.752-01","Giva12@GMAIL.COM","pikachu622","Givanildo","12:00", "GUilherme, Rua Calheiros", 220.00),
("312.876.122-05","mg12@GMAIL.COM","Moura412","Miguel","18:00", "GUilherme, Rua Calheiros", 165.50);

insert into profissao(nome,cod) values("imformatica", 1),
("professor", 2),
("mecanico", 3);

insert into pagamento(nome,cod) values("pix", 1),
("dinheiro", 2),
("cartão", 3);

insert into clienteServidor(fk_cliente_cpf, fk_servidor_email) values("612.212.122-12", "TONHO@GMAIL.COM"),
("192.761.093-70","TONHO@GMAIL.COM"),("122.975.123-82", "eli@GMAIL.COM"),("809.231.023-06", "eli@GMAIL.COM"),
("134.921.012-50", "TONHO@GMAIL.COM"),
("382.555.773-82", "mg12@GMAIL.COM");



insert into servidorPagamento(fk_pagamento_cod, fk_servidor_email) values(1, "TONHO@GMAIL.COM"),
(2, "TONHO@GMAIL.COM"), (1, "mg12@GMAIL.COM"),(1, "eli@GMAIL.COM"),
(3, "TONHO@GMAIL.COM"),(2, "eli@GMAIL.COM");
                      
                                                                         

insert into servidorProfissao(fk_profissao_cod, fk_servidor_email) values(1, "TONHO@GMAIL.COM"),(2, "eli@GMAIL.COM"),
(3, "mg12@GMAIL.COM");
                      

