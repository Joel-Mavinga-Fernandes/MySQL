create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(50),
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(50) not null,
ataque int not null,
defesa int not null,
vida int not null,
idade int not null,
nacionalidade varchar(50) not null,
cidade varchar(50) not null,
altura  double not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe(classe) values ("Mercenario");
insert into tb_classe(classe) values ("Guereiro");
insert into tb_classe(classe) values ("Mercenario");
insert into tb_classe(classe) values ("lutador");
insert into tb_classe(classe) values ("Sniper");

insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("jonathan", 3000, 1500, 100, 28,"Russo", "Moscou", 2.00,1); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("vanessa",1500, 3000, 80, 20,"Brazil", "Fortaleza", 2.30,1); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("Carmen", 1000, 1800, 90, 30, "Angola", "Uíge", 1.95,2); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("Mbala", 2200, 1000, 100, 22,"Africa do Sul", "Pretoria", 2.05,3); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("kevin", 1900, 3000, 100, 29,"USA", "Chicago", 1.98,4); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("Carlos", 1300, 1400, 80, 27,"México", "Cidade do México", 2.04,5); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("Dany",2700, 1900, 100, 21,"Ghana", "Acra", 1.80,1); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("Mbiavanga", 1400, 3000, 20, 29,"Congo", "Kinshasa", 1.90,2); 
insert into tb_personagem(nome,ataque,defesa,vida,idade,nacionalidade,cidade,altura,classe_id) values ("nikaragua", 2200, 1780, 20, 29,"japão", "Tokyo", 1.90,3); 

select * from tb_classe;
Select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where ataque between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.vida, tb_personagem.nacionalidade, tb_personagem.cidade, tb_personagem.altura, tb_classe.classe
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;





