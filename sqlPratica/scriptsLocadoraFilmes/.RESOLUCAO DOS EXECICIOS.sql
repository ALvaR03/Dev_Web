/*4) Extraia do banco uma relação de todos os filmes lançados na década de 90. A relação 
deve mostrar o código do filme, nome, nome original e ano de lançamento. A consulta 
deve ser ordena pelo ano de lançamento dos filmes, conforme o print abaixo:*/

SELECT COD_FILME,NOME, NOME_ORIGINAL, ANO FROM LOCADORA.TB_FILME
WHERE ANO >= '1990' && ANO <= '1999'
ORDER BY ANO;

	#OU

SELECT COD_FILME,NOME, NOME_ORIGINAL, ANO FROM LOCADORA.TB_FILME
WHERE ANO BETWEEN 1990 AND 1999
ORDER BY ANO;

	#FINISHED

/*5) Gere uma listagem com nome, cidade e estado dos clientes do Rio de Janeiro e São 
Paulo.*/

SELECT NOME, CIDADE, UF FROM tb_cliente
WHERE UF IN ('SP','RJ');

	#FINISHED

/*6) Gere uma lista de todos os filmes e a quantidade dos seus respectivos exemplares:*/

 

	#FINISHED

 /*7) Gere um relatório que liste todos os clientes que fizeram uma locação, bem como a 
quantidade  de  locação  por  cliente.  O  relatório  deve  conter  informações  conforme 
abaixo: */

SELECT c.COD_CLIENTE, nome, cidade, uf, COD_EXEMPLAR, dt_saida from tb_cliente c
JOIN tb_locacao l
ON c.COD_CLIENTE = l.COD_EXEMPLAR
GROUP BY l.COD_CLIENTE;

	#FINISHED

/*8) Crie uma lista de todos os atores cujo país de origem seja a Inglaterra:*/

SELECT 
tb_profissional_cinema.cod_profissional_cinema, 
tb_profissional_cinema.nome, 
tb_profissional_cinema.dt_nascimento, 
tb_profissional_cinema.pais_origem 

FROM tb_profissional_cinema

WHERE pais_origem = 'INGLATERRA'

	#FINISHED


/*9) Crie uma listagem de todos os filmes assistidos pelo cliente JOÃO SIMÕES LOPES 
NETO: */

SELECT tb_cliente.nome, tb_cliente.uf, tb_filme.nome FROM tb_cliente, tb_filme
WHERE tb_cliente.nome = 'João Simões Lopes Neto'

	#FINISHED