create database animes;
use animes;

create table animes (
id int primary key auto_increment,
titulo varchar(50),
genero varchar(50)
);

use animes;
create table personagens (
id int primary key auto_increment,
nome varchar(50),
anime_id int,
foreign key (anime_id) references animes(id)
);

use animes;
create table habilidades (
id int primary key auto_increment,
nome varchar(50),
personagem_id int,
foreign key (personagem_id) references personagens(id)
);


insert into personagens (nome) values
('Naruto'),
('Miyo'),
('Rintaro'),
('Yuki');

insert into animes (titulo, genero) values
('Naruto', 'Acao'),
('Meu Casamento Feliz', 'Romance'),
('The Fragrant Flower Blooms with Dignity', 'Romance'),
('A sing of Affection', 'Romance');

insert into habilidades (nome, personagem_id) values
('Sharingan', 1),
('Invisibilidade',2),
('Super Forca', 3),
('Controlar Mentes',4);


select 
	p.nome as Personagem,
    a.titulo as Animes
from personagens p
inner join animes a on p.anime_id = a.id;

select 
	p.nome as Personagem,
    h.nome as Habilidade
from personagens p
left join habilidades h on h.personagem_id = p.id;

select
	p.nome as Personagem, 
    h.nome as Habilidade
from personagens p
right join habilidades h on h.personagem_id = p.id; 

select
	p.nome as Personagem, 
    h.nome as Habilidade
from personagens p
left join habilidades h on h.personagem_id = p.id 

union

select p.nome as Personagem,
h.nome as Habilidade
from personagens p
right join habilidades h on h.personagem_id = p.id;

	

