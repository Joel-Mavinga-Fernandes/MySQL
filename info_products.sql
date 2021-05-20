create database db_ecommerce; 

use db_ecommerce;

create table tb_products(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
preco decimal not null,
cor varchar(255) not null,
primary key (id)
);

insert into tb_products(nome, marca, preco, cor) value ("Air Force One", "Nike", 500, "Branca");
insert into tb_products(nome, marca, preco, cor) value ("Retro", "Jordan", 600, "vermelho");
insert into tb_products(nome, marca, preco, cor) value ("Gazelle", "Adidas", 250, "verde");
insert into tb_products(nome, marca, preco, cor) value ("KL", "New Balance", 350, "Azul");
insert into tb_products(nome, marca, preco, cor) value ("Old scholl", "Converse", 500, "Branca");
insert into tb_products(nome, marca, preco, cor) value ("Kevin Durant", "Nike", 570, "Branca");
insert into tb_products(nome, marca, preco, cor) value ("PG", "Nike", 500, "Branca");
insert into tb_products(nome, marca, preco, cor) value ("all white", "Balenciaga", 1000, "rosa");

select * from tb_products;
select * from tb_products where preco>500;
select * from tb_products where preco<500;

update tb_products set preco = 1000 where id=7; 