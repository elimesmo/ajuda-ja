# Quando for tal email aparecerar uma senha relacionada aquele email  
SELECT senha FROM cliente where email = "jose@gmail.com";
SELECT senha FROM servidor where email = "TONHO@GMAIL.COM";	

#Quando você for pesqueisar uma profissão
SELECT 
    s.nome, p.nome, s.foto
FROM
    servidor s
        INNER JOIN
    servidorProfissao sp ON s.cpf = sp.fk_servidor_cpf
        INNER JOIN
    Profissao p ON sp.fk_Profissao_cod = p.cod;

 