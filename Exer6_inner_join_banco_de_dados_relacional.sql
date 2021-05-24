create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco Decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria) values ("Java");
insert into tb_categoria(categoria) values ("Banco de Dados");
insert into tb_categoria(categoria) values ("Redes");
insert into tb_categoria(categoria) values ("Gestao de Projetos");
insert into tb_categoria(categoria) values ("Portugol");

insert into tb_produto(nome,preco,categoria_id) values ("Poo", 100, 1); 
insert into tb_produto(nome,preco,categoria_id) values ("Cisco", 50,  3); 
insert into tb_produto(nome,preco,categoria_id) values ("Algoritmo", 60, 5); 
insert into tb_produto(nome,preco,categoria_id) values ("Escopo", 150, 4); 
insert into tb_produto(nome,preco,categoria_id) values ("Arrays", 100, 1); 
insert into tb_produto(nome,preco,categoria_id) values ("Gestao Agil", 89, 4); 
insert into tb_produto(nome,preco,categoria_id) values ("L. Repeticao", 70, 1); 
insert into tb_produto(nome,preco,categoria_id) values ("Redes de Computador", 150, 1); 

select * from tb_categoria;
Select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%J%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where tb_categoria.id=1;