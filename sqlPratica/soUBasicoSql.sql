-- soUBasicoSql.sql

CREATE TABLE tb_cursos(
    id_curso INT NOT NULL,    
    imagem_curso VARCHAR(100) NOT NULL,
    nome_curso CHAR(50) NOT NULL,
    resumo TEXT NULL,
    data_cadastro DATETIME NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    investimento FLOAT(8,2) DEFAULT 0
);

DROP TABLE tb_cursos;

/* Editando o nome das tabelas */
RENAME TABLE tb_cursos_teste to tb_cursos;

/* Incluindo, editando e removendo colunas de tabelas */
-- Incluindo
ALTER TABLE tb_cursos ADD COLUMN carga_horaria VARCHAR(5) NOT NULL;
ALTER TABLE tb_cursos ADD carga_horaria INT(5) NULL;

-- Editando
ALTER TABLE tb_cursos CHANGE carga_horaria carga_hora INT(5) NULL;
ALTER TABLE tb_cursos CHANGE carga_hora carga_horaria INT(5) NULL;
ALTER TABLE tb_cursos CHANGE carga_hora carga_horaria VARCHAR(5) NULL;

-- Removendo 
ALTER TABLE tb_cursos DROP carga_hora;

/* Inserindo dados na tabela */
INSERT INTO tb_cursos(ativo, carga_horaria, data_cadastro, id_curso, imagem_curso, investimento, nome_curso, resumo) 
VALUES(1, 35, '2021-02-16 12:25:35', 2, 'curso_angular.jpg', 543.32, 'Web Completo com JS, TS e Angular', 'Aprenda criar aplicacoes front-end com javascript e angular')

/* Consultas de dados */
-- Sintaxe
SELECT <colunas> FROM <tabela>;

SELECT carga_horaria, resumo FROM tb_cursos;
SELECT * FROM tb_cursos; -- Para trazer todas as colunas

/* SELECT - Filtrando registros (WHERE) */
SELECT * FROM tb_alunos WHERE interesse = 'Jogos';
SELECT * FROM tb_alunos WHERE idade < 25;
SELECT * FROM tb_alunos WHERE idade > 25;
SELECT * FROM tb_alunos WHERE idade <= 25;
SELECT * FROM tb_alunos WHERE idade >= 25;

/* SELECT - Filtro com operadores logicos */
SELECT * FROM tb_alunos WHERE interesse = 'Jogos' AND idade > 45;
SELECT * FROM tb_alunos WHERE interesse = 'Jogos' AND idade > 45 AND estado = 'RN';
SELECT * FROM tb_alunos WHERE interesse = 'Jogos' OR idade > 45;


/* SELECT - Filtros com o operador BETWEEN*/
SELECT * FROM tb_alunos WHERE idade BETWEEN 18 AND 25;


/* SELECT - Filtros com o operador IN*/
-- De maneira nao simple
SELECT * FROM tb_alunos WHERE interesse = 'Jogos' OR interesse = 'Esporte' OR interesse = 'Musica';

-- De maneira mais simples
SELECT * FROM tb_alunos WHERE interesse IN('Jogos', 'Esporte', 'Musica');

/* SELECT - Filtros com o operador LIKE */
-- "%" > Indica que pode haver a existencia de qualquel conjunto de caracter de texto
-- "_" > Indica que porde haver a existencia de um ou mais caracteres em uma posicao especifica do texto

SELECT * FROM tb_alunos WHERE nome LIKE '%e';
SELECT * FROM tb_alunos WHERE nome LIKE '%ne';
SELECT * FROM tb_alunos WHERE nome LIKE '%a%';
SELECT * FROM tb_alunos WHERE nome LIKE 'C%';

SELECT * FROM tb_alunos WHERE nome LIKE '_riel';
SELECT * FROM tb_alunos WHERE nome LIKE '_ru_';
SELECT * FROM tb_alunos WHERE nome LIKE 'I__';

SELECT * FROM tb_alunos WHERE nome LIKE '%tt_';

/* SELECT - Ordenando resultado */
SELECT * FROM tb_alunos WHERE idade BETWEEN 18 AND 59 ORDER BY nome ASC;
SELECT * FROM tb_alunos WHERE idade BETWEEN 18 AND 59 ORDER BY nome ASC, idade DESC, estado ASC;

/* SELECT - Limitando retorno */
SELECT * FROM tb_alunos LIMIT 25;
SELECT * FROM tb_alunos ORDER BY id_aluno DESC LIMIT 25;
SELECT * FROM tb_alunos LIMIT 4 OFFSET 0;
SELECT * FROM tb_alunos LIMIT 8 OFFSET 4;
SELECT * FROM tb_alunos LIMIT 8,4;

/* SELECT - Funcoes de agregacao parte 1: MAX, MIN e AVG */
-- Traz o menor valor 
SELECT MIN(investimento) FROM tb_cursos;
SELECT MIN(investimento) FROM tb_cursos WHERE ativo = TRUE;

-- Traz o maior valor
SELECT MAX(investimento) FROM tb_cursos WHERE ativo = TRUE;

-- Traz a media
SELECT AVG(investimento) FROM tb_cursos WHERE ativo = TRUE;
SELECT AVG(horas) FROM tb_cursos WHERE ativo = TRUE;


/* SELECT - Funcoes de agregacao parte 2: SUM e COUNT */
-- Retorna a soma dos valores de todos os registros com base em uma coluna
SELECT SUM(investimento) FROM tb_cursos WHERE ativo = TRUE
SELECT SUM(investimento) FROM tb_cursos WHERE ativo = false

-- Retorna a quantidade de todos os registros de uma tabela
SELECT COUNT(*) FROM tb_cursos WHERE ativo = TRUE
SELECT COUNT(*) FROM tb_cursos WHERE ativo = FALSE

/* SELECT - Agrupando selecao de registros (GROUP BY)*/
SELECT * FROM tb_cursos GROUP BY interece;
SELECT *, COUNT(*) AS total_por_interece FROM tb_cursos GROUP BY interece;
SELECT estado, count(*) AS total_por_estado FROM tb_cursos GROUP BY estado;


