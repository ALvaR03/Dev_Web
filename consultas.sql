create database curso_web_db;

use curso_web_db;

/*Criando as tabelas*/
create table tb_cursos (
	id_cursos int not null,
	imagem_curso varchar(100) not null,
	nome_curso char(50) not null,
	resumo text null,
	data_cadastro datetime not null,
	ativo boolean default true,
	investimento float(5,2) default 0 
);

drop table tb_cursos;

/*Modificando nomes das tablelas*/
rename table tb_cursos_test to tb_cursos;

/*Incluindo colunas*/
alter table tb_cursos add column carga_horaria varchar(5) not null,

/*Modificando o nome da coluna*/
alter table tb_cursos change carga_horaria carga_hora int(5) null;

/*Deletando a tabela*/
alter table tb_cursos drop carga_horaria;

alter table tb_cursos add carga_horaria int(5) null;

/*Inserindo dados na tabela */
insert into tb_cursos(ativo, carga_horaria, data_cadastro, id_curso, imagem_curso, investimento, nome_curso, resumo) 
values(
	1, 35, '2018-07-17 12:25:21', 2, 'curso_angular.jpg', 575.86, 'web completo com JS, TS e Angular', 'aprenda a criar aplicacoes frot-end'
);

/*Consultado dados*/
select ativo, carga_horaria, id_curso from tb_curso;
select * from curso_web_db.tb_alunos where interesse = 'Jogo' and idade > 44;
select * from curso_web_db.tb_alunos where interesse = 'Jogo' and estado = 'RN';
select * from curso_web_db.tb_alunos where idade between 18 and 21;
select * from curso_web_db.tb_alunos where data between '2018-07-01' and '2018-07-31';

/*Operador in, or, not in*/
select * from curso_web_db.tb_alunos where interesse = 'Esporte' or interesse = 'Musica';
select * from curso_web_db.tb_alunos where interesse in ('Jogos', 'Musica');
select * from curso_web_db.tb_alunos where interesse not in ('Jogos', 'Musica', 'Esporte');


/*Operador LIKE */
select * from curso_web_db.tb_alunos where nome like 'Evelyn';
select * from curso_web_db.tb_alunos where nome like '%e';
select * from curso_web_db.tb_alunos where nome like '%ne';
select * from curso_web_db.tb_alunos where nome like '%a%';
select * from curso_web_db.tb_alunos where nome like 'C%';

select * from curso_web_db.tb_alunos where nome like '_riel';
select * from curso_web_db.tb_alunos where nome like '_ru_';
select * from curso_web_db.tb_alunos where nome like 'I__';
select * from curso_web_db.tb_alunos where nome like '%tt_';

/*Ordenado resultados*/
select * from curso_web_db.tb_alunos where idade between 18 and 59 order by nome asc;
select * from curso_web_db.tb_alunos where idade between 18 and 59 order by nome asc, idade desc, estado asc;

/*Limitando retornos*/
select * from curso_web_db.tb_alunos limit 25;
select * from curso_web_db.tb_alunos order by id_aluno desc limit 25;
select * from curso_web_db.tb_alunos limit 4 offset 4;
select * from curso_web_db.tb_alunos limit 4 offset 8;
select * from curso_web_db.tb_alunos limit 8, 4;


/*select - funcoes de agregacao parte 1 - max, min e avg*/
select 
	min(investimento)
from 
	curso_web_db.tb_alunos;
where 
	ativo = true;

select 
	max(investimento)
from 
	curso_web_db.tb_alunos;
where 
	ativo = true;

select 
	avg(investimento)
from 
	curso_web_db.tb_alunos;
where 
	ativo = true;

/* select - Funcao de agregacao parte2: sum e count */
select sum(investimento) from curso_web_db.tb_alunos; 
select sum(investimento) from curso_web_db.tb_alunos where ativo = true; 
select count(*) from curso_web_db.tb_alunos where ativo = true; 

/*select - Agrupando selecao de registros (Group By)*/
select * from curso_web_db.tb_alunos where interesse = 'Jogos'; 
select * from curso_web_db.tb_alunos group by interesse; 
select interesse, count(*) from curso_web_db.tb_alunos group by interesse;
select interesse, count(*) as total_por_interesse from curso_web_db.tb_alunos group by interesse;
select estado, count(*) as total_por_estado from curso_web_db.tb_alunos group by estado;
select * from curso_web_db.tb_alunos where estado = 'AM';

/*select - Filtrando selecoes agrupadas (Having)*/

