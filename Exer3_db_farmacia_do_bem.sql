create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
 categoria varchar(50),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria) values ("Fitoterapico");
insert into tb_categoria(categoria) values ("Alopatico");
insert into tb_categoria(categoria) values ("Homeopatico");
insert into tb_categoria(categoria) values ("Generico");
insert into tb_categoria(categoria) values ("Manipulado");

insert into tb_produto(nome, preco, categoria_id) values ("Ginko Biloba", 51,1); 
insert into tb_produto(nome, preco, categoria_id) values ("Antibiotico", 20,2);  
insert into tb_produto(nome, preco, categoria_id) values ("Stodal", 60,3);  
insert into tb_produto(nome, preco, categoria_id) values ("Acebrofilina", 34,4); 
insert into tb_produto(nome, preco, categoria_id) values ("Salgada", 25,5); 
insert into tb_produto(nome, preco, categoria_id) values ("Aciclovir", 55,4);  
insert into tb_produto(nome, preco, categoria_id) values ("Biotina", 55,5); 
insert into tb_produto(nome, preco, categoria_id) values ("Aloe vera", 55,1);


select * from tb_categoria;
Select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where categoria_id = 3;