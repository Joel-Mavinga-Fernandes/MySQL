create database db_infofunc;

use db_infofunc;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(50) not null,
cpf bigint not null,
salario decimal not null,
primary key (id)
);

insert into tb_funcionaries (nome, idade, cargo, cpf, salario) values ("Carlos", 40,"Desenvolvedor Jr",24493884603, 5000);
insert into tb_funcionaries (nome, idade, cargo, cpf, salario) values ("Paulo", 43,"Desenvolvedor Sr",23893964603, 1900);
insert into tb_funcionaries (nome, idade, cargo, cpf, salario) values ("Daniel", 20,"Assistente de RH",85293884563, 1700);
insert into tb_funcionaries (nome, idade, cargo, cpf, salario) values ("Matondo", 33,"Gestor de Projetos",67993884643, 3500);
insert into tb_funcionaries (nome, idade, cargo, cpf, salario) values ("Zora", 27,"Scrum Master",7869388093, 6000);

select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;  

update tb_funcionaries set idade = 45 where id=2;




