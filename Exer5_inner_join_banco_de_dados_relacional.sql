create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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

insert into tb_categoria(categoria) values ("Tintas");
insert into tb_categoria(categoria) values ("Hidraulicos");
insert into tb_categoria(categoria) values ("Electrico");
insert into tb_categoria(categoria) values ("Fixadores");
insert into tb_categoria(categoria) values ("Agramassas");

insert into tb_produto(nome,preco,categoria_id) values ("Parafusos", 100, 4); 
insert into tb_produto(nome,preco,categoria_id) values ("Tomadas", 50,  3); 
insert into tb_produto(nome,preco,categoria_id) values ("Acrilica", 60, 1); 
insert into tb_produto(nome,preco,categoria_id) values ("Ralo", 150, 2); 
insert into tb_produto(nome,preco,categoria_id) values ("PVA", 100, 1); 
insert into tb_produto(nome,preco,categoria_id) values ("polimerica", 89, 5); 
insert into tb_produto(nome,preco,categoria_id) values ("cabos", 70, 3); 
insert into tb_produto(nome,preco,categoria_id) values ("Oleo", 150, 1); 

select * from tb_categoria;
Select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where tb_categoria.id=1;