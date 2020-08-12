/* Projeto loja virtual */

create table tb_produtos (
	id_produto int not null primary key auto_increment,
	produto varchar(200) not null,
	valor float(8,2) not null
);

create table tb_descricao_tecnicas (
	id_descricao_tecnica int not null primary key auto_increment,
	id_produto int not null,
	descricao_tecnica text not null,
	foreign key(id_produto) references tb_produtos(id_produto) 
);

INSERT INTO tb_produtos(produto, valor) VALUES ('Notebook Dell Inspiron Ultrafino Intel Core i7, 16GB RAM e 240GB SSD', 3500.00);

INSERT INTO tb_produtos(produto, valor) VALUES ('Smart TV LED 40" Samsung Full HD 2 HDMI 1 USB Wi-Fi Integrado', 1475.54);

INSERT INTO tb_produtos(produto, valor) VALUES ('Smartphone LG K10 Dual Chip Android 7.0 4G Wi-Fi Câmera de 13MP', 629.99);


INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (1, 'O novo Inspiron Dell oferece um design elegante e tela infinita que amplia seus sentidos, mantendo a sofisticação e medidas compactas...');

INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (2, 'A smart TV da Samsung possui tela de 40" e oferece resolução Full HD, imagens duas vezes melhores que TVs HDs padrão...');

INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (3, 'Saia da mesmice. O smartphone LG está mais divertido, rápido, fácil, cheio de selfies e com tela HD de incríveis 5,3"...');

/* Relacionamento de Um para Muitos */
create table tb_imagem (
	id_imagem int not null primary key auto_increment,
	id_produto int not null,
	foreign key(id_produto) references tb_produtos(id_produto),
	url_imagem varchar(200) not null
);

insert into tb_imagem(id_produto, url_imagem) values 
(1, 'notebook_1.jpg'),
(1, 'notebook_2.jpg'),
(1, 'notebook_3.jpg');

insert into tb_imagem(id_produto, url_imagem) values 
(2, 'smarttv_1.jpg'),
(2, 'smarttv_2.jpg');

insert into tb_imagem(id_produto, url_imagem) values 
(3, 'smartphone_1.jpg');

/* Relacionamento de Muitos para Muitos */
create table tb_clientes (
	id_cliente int not null primary key auto_increment,
	nome varchar(100) not null,
	idade int(3) not null
);

create table tb_pedidos (
	id_pedido int not null primary key auto_increment,
	id_cliente int not null,
	foreign key(id_cliente) references tb_clientes(id_cliente),
	data_hora datetime not null default current_timestamp
);

create table tb_pedidos_produtos (
	id_pedido int not null,
	id_produto int not null,
	foreign key(id_pedido) references tb_pedidos(id_pedido),
	foreign key(id_produto) references tb_produtos(id_produto)
);

insert into tb_clientes(nome, idade) values ('Jorge', 29);
insert into tb_pedidos(id_cliente) values (1);
insert into tb_pedidos_produtos(id_pedido, id_produto) values (1, 2);
insert into tb_pedidos(id_cliente) values (1); 
insert into tb_pedidos_produtos(id_pedido, id_produto,) values (2, 3);
insert into tb_clientes(nome, idade) values ('Jamilton', 30);
insert into tb_pedidos(id_cliente) values (2);
insert into tb_pedidos_produtos(id_pedido, id_produto) values (3, 1);

/*JOIN - Juncao a esquerda (LEFT JOIN)*/
select 
	* 
from 
	tb_clientes left join tb_pedidos on (tb_clientes.id_cliente = tb_pedidos.id_cliente);

select 
	* 
from 
	tb_produtos left join tb_imagens on (tb_produtos.id_produto = tb_imagens.id_produto);

/*JOIN - Juncao a direita (RIGHT JOIN)*/
select 
	*
from 
	tb_clientes right join tb_pedidos on (tb_clientes.id_cliente = tb_pedidos.id_cliente);

/*JOIN - Juncao a direita (RIGHT JOIN)*/
insert into tb_produtos(produto, valor) values ('HD Externo Portatil Seagate Expansion 1TB USB 3.0',274.90);

select 
	*
from 
	tb_pedidos left join tb_pedidos_produtos on (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
	left join tb_produtos on (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

select 
	*
from 
	tb_pedidos right join tb_pedidos_produtos on (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
	left join tb_produtos on (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

select 
	*
from 
	tb_pedidos right join tb_pedidos_produtos on (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
	right join tb_produtos on (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

select 
	*
from 
	tb_pedidos inner join tb_pedidos_produtos on (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido);

select 
	*
from 
	tb_pedidos inner join tb_pedidos_produtos on (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
	inner join tb_produtos on (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);


/* Alias - Apelidando tabelas */
select 
	*
from 
	tb_produtos as p left join tb_descricoes_tecnicas as dt on (p.id_produto = dt.id_produto);

select 
	tb_produtos.id_produtos,
	tb_produtos.produto,
	tb_produtos.valor,
	tb_descricoes_tecnicas.descricao_tecnica
from 
	tb_produtos as p left join tb_descricoes_tecnicas as dt on (p.id_produto = dt.id_produto);

select 
	p.id_produto,
	p.produto,
	p.valor,
	dt.descricao_tecnica
from 
	tb_produtos as p left join tb_descricoes_tecnicas as dt on (p.id_produto = dt.id_produto);

select 
	p.id_produto,
	p.produto,
	p.valor,
	dt.descricao_tecnica
from 
	tb_produtos as p left join tb_descricoes_tecnicas as dt on (p.id_produto = dt.id_produto)
where
	p.valor >= 500;

select 
	p.id_produto,
	p.produto,
	p.valor,
	dt.descricao_tecnica
from 
	tb_produtos as p left join tb_descricoes_tecnicas as dt on (p.id_produto = dt.id_produto)
where
	p.valor >= 500
order by
	p.valor asc;
