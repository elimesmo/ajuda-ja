# Saber os servidores que estão nesse horario disponivel 
select * from servidor where Horario_Disponivel = "6:00";

# Filtrar a forma de pagamento para saber qual servidor aceita esse tipo de pagamento
select * from servidorPagamento where fk_pagamento_cod = "1";

# Filtrar o servidor que tem essa profissão
select * from profissao where nome = "professor";

# ele vai contar quantos cliente esse servidor TONHO@GAMIL.COM tem
select COUNT(fk_cliente_cpf) from clienteServidor where fk_servidor_cpf = "313.114.316-90";

# Vai pegar o servidor que recebe o valor menor que 200.00 
select * from servidor where valor <= 200.00;

# vai pegar todos os clientes naquele bairro 
select * from cliente  where endereco like "Tabuleiro%";

# Ordenando os valores de cada sevidor do maior para o menor
select * from servidor ORDER BY valor desc;

# vai ordenar os sevidores em ordem alfabetica
SELECT * FROM servidor ORDER BY nome;

# vai pegar os valores até 200
select * from servidor where valor limit 200;

select 