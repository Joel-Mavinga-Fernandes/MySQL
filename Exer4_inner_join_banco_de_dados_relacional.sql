create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco int not null,
cor varchar (50),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria) values ("Doce");
insert into tb_categoria(categoria) values ("Semiacidas");
insert into tb_categoria(categoria) values ("Acidas");
insert into tb_categoria(categoria) values ("Monofagica");
insert into tb_categoria(categoria) values ("oleaginosas");

insert into tb_produto(nome,preco,cor,categoria_id) values ("Banana", 5, "Amarela", 1); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Maca Verde", 6, "Verde", 2); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Laranja", 15, "Cor de laranja", 3); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Melancia", 18, "Verde", 4); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Coco", 7, "Castanha", 5); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Manga", 6, "Amarela", 1); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Goiaba", 8, "Verde", 2); 
insert into tb_produto(nome,preco,cor,categoria_id) values ("Uva", 3, "Cor de vinho", 3); 

select * from tb_categoria;
Select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id where tb_categoria.id=1;