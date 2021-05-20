create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
nota int not null ,
primary key (id)
);

insert into tb_alunos(nome, idade, nota) values("james", 23, 9);
insert into tb_alunos(nome, idade, nota) values("harden", 26, 5);
insert into tb_alunos(nome, idade, nota) values("Damian", 19, 8);
insert into tb_alunos(nome, idade, nota) values("Kobe", 25, 5);
insert into tb_alunos(nome, idade, nota) values("Kamoras", 24, 6);
insert into tb_alunos(nome, idade, nota) values("Curry", 21, 4);
insert into tb_alunos(nome, idade, nota) values("Green", 18, 5);
insert into tb_alunos(nome, idade, nota) values("kyrie", 19, 2);

select * from tb_alunos;

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set idade = 28 where id = 8;