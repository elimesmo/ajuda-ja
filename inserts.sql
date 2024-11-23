

insert into cliente(cpf,email,senha,nome,endereco,numero) 
values("612.212.122-12","eligordo@gmail.com","gordo3221","Gordinho da Silva Pinto","Alagoas, Flexeiras ,Iraque, Rua lourenço, 85","82 99232-5342"), 
("602.455.773-92","jose@gmail.com","joselito123","jose da Silva","Alagos, Maceió, Tabuleiro, Rua ana, 55","82 99135-8342"),
("382.555.773-82","teo@gmail.com","teozinho123","teo dos santos","Alagos, Maceió, Tabuleiro, Rua fenando, 115","82 99232-5352"),
("122.975.123-82","ljsm@gmail.com","jhonson132","LIndonjhonson da Silva Machado","Alagos, Maceió, Tabuleiro, Rua fenando, 95","82 99876-5122"),
("192.761.093-70","Narc12@gmail.com","ciso8132","Adonai Roberto de Oliveira Narciso","Alagoas, Flexeiras, Rua lins, 45","82 97890-1542"),
("134.921.012-50","dhs.lima@gmail.com","DHL@gmail.com","David lourenço","Alagoas Flexeiras, Rua caçolinha, 75","82 92376-3422"),
("809.231.023-06","ciço34@gmail.com","ciço9032","José cicero dos Santos","Alagoas, Flexeiras,Rua Nova Flexeiras, 90","82 91276-0987");




insert into servidor(cpf,email,senha,nome,Horario_Disponivel_entrada,Horario_Disponivel_saida,endereco,valor, numero) 
values("313.114.316-90", "David@gmail.com","david1989","David Henrique de Souza Lima","6:00","19:00","Alagoas, Maceió, Benedito", 200.00,"82 99533-4575"),
("333.224.367-70", "eli@GMAIL.COM","elimesmo666","Elijamerson","7:00","18:00", "Alagoas, Maceió, Benedito", 150.00,"82 99533-2581"),
("353.114.877-21","sandro@GMAIL.COM","sandinho157","sandro","6:00","16:00", "Alagoas, Flexeiras, Guilherme", 100.00,"82 99533-9513"),
("309.198.752-01","Giva12@GMAIL.COM","pikachu622","Givanildo","12:00","19:00", "Alagoas, Flexeiras, GUilherme", 220.00,"82 99533-3572"),
("312.876.122-05","mg12@GMAIL.COM","Moura412","Miguel","9:00", "17:00","Alagoas, Flexeiras, GUilherme", 165.50,"82 99533-7524"),
("312.574.666-02","iranmatador@GMAIL.COM","Matacassaco123","Iran Santana","13:00", "18:00","Alagoas, Rio Largo, Cleito", 160,"82 99533-5534");

insert into profissao(nome,cod) values
("informática", 1),
("professor", 2), 
("mecânico", 3),
("Encanador", 4), 
("Eletricista", 5),
("Babá", 6);

insert into formasPagamento(nome,cod) values
("pix", 1),
("dinheiro", 2),
("cartão", 3);

INSERT INTO pagamentos (cliente_cpf,  servidor_cpf, valor, data_pagamento, descricao)
VALUES 
("192.761.093-70",  "313.114.316-90", 200.00, '2024-11-21 10:00:00','Pagamento por um serviço de informática'),
("612.212.122-12", "309.198.752-01",150.00, '2024-11-22 13:00:00', 'Pagamento por um serviço de encanador '),
("122.975.123-82", "333.224.367-70",200.00, '2024-10-02 17:30:00','Pagamento por um serviço de prefessor' ),
("809.231.023-06","312.876.122-05", 165.50, '2024-11-21 18:40:00', 'Pagamento por um serviço de eletricista'),
("134.921.012-50","309.198.752-01",150.00, '2024-11-30 13:30:00',  'Pagamento por um serviço de encanador'),
("382.555.773-82", "312.876.122-05",150.00, '2024-10-29 11:30:00', 'Pagamento por um serviço de eletricista');

insert into clienteServidor(fk_cliente_cpf, fk_servidor_cpf) values 
("612.212.122-12", "309.198.752-01"),
("192.761.093-70","313.114.316-90"),
("122.975.123-82", "333.224.367-70"),	
("809.231.023-06", "312.876.122-05"),
("134.921.012-50", "309.198.752-01"),
("382.555.773-82", "312.876.122-05");



insert into servidorFormasPagamento(fk_formasPagamento_cod, fk_servidor_cpf) values
(1, "313.114.316-90"),
(2, "313.114.316-90"),
(1, "312.876.122-05"),
(1, "333.224.367-70"),
(3, "313.114.316-90"),
2, "333.224.367-70");
                      
                                                                         

insert into servidorProfissao(fk_profissao_cod, fk_servidor_cpf) values
(1, "313.114.316-90"),
(2, "333.224.367-70"),
(3, "353.114.877-21"),
(4, "309.198.752-01"),
(5, "312.876.122-05"),
(6, "312.574.666-02");
                      
	
