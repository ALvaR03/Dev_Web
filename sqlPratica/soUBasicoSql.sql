# uriSql.sql

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

/* Filtrando registros (WHERE) */
SELECT 

