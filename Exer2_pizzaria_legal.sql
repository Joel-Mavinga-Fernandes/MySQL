create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
 sabor varchar(50),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
tipo varchar(50) not null,
preco decimal (5,2) not null,
massa varchar(50) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(sabor) values ("Doritos");
insert into tb_categoria(sabor) values ("banana");
insert into tb_categoria(sabor) values ("Chocolate");
insert into tb_categoria(sabor) values ("Bacon");
insert into tb_categoria(sabor) values ("Calabresa");

insert into tb_produto(tipo, preco, massa, categoria_id) values ("Doce", 51, "Grossa",2); 
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Salgada", 40, "Fina",1);  
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Doce", 60, "Grossa",3);  
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Salgada", 34, "Grossa",4); 
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Salgada", 25, "Fina",5); 
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Salgada", 55, "Grossa",1);  
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Doce", 55, "Grossa",3); 
insert into tb_produto(tipo, preco, massa, categoria_id) values ("Doce", 55, "Grossa",2);


select * from tb_categoria;
Select * from tb_produto;

select * from tb_produto where preco > 45;

select * from tb_produto where preco between 29 and 60;

select * from tb_produto where tipo like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where categoria_id = 1;