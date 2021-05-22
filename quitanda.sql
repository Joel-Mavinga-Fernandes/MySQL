-- criar banco de dados
create database db_quitanda;


use db_quitanda;

-- criar tabela
create table tb_produtos(           
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
primary key (id)               
 );
 
-- insere dados na tabela
insert into tb_produtos(nome, preco) values ("tomate", 50.00);
insert into tb_produtos(nome, preco) values ("maca", 5.00);

-- visualização de dados
select * from tb_produtos;
select nome, preco from tb_produtos;
select * from tb_produtos where id=1;
select * from tb_produtos where id>2;

-- altera a estrutura da tabale 
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

-- aletrar dados na tabela
update tb_produtos set preco=10 where id=1;

-- deletar dados na tabela 
delete from tb_produtos  where