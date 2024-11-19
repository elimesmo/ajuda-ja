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

    



 