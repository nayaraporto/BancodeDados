create database jogo_batalha;
use jogo_batalha;

create table classes (
    id int primary key auto_increment,
    nome varchar (50),
    tipo_ataque varchar (50)
);

use jogo_batalha;
create table personagens (
    id int primary key auto_increment,
    nome varchar (50),
    classe_id int,
    nivel int,
    foreign key (classe_id) references classes(id)
);

use jogo_batalha;
create table batalhas (
    id int primary key auto_increment,
    personagem1_id int,
    personagem2_id int,
    vencedor_id int,
    foreign key (personagem1_id) references personagens(id),
    foreign key (personagem2_id) references personagens(id),
    foreign key (vencedor_id) references personagens(id)
);

insert into classes (nome, tipo_ataque) values
('Principe', 'Corpo a corpo'),
('Mago', 'Magia'),
('Princesa', 'Distância');

insert into personagens (nome, classe_id, nivel) values
('Murillo', 1, 12),
('Merlin', 2, 20),
('Nayara', 3, 15);

insert batalhas (personagem1_id, personagem2_id, vencedor_id) values
(1, 2, 2),
(2, 3, 3);

select
	p.nome as personagem, 
    c.nome as classe, 
    c.tipo_ataque
from personagens p
inner join classes c on p.classe_id = c.id;

select 
	p.nome as personagem, 
    b.id as batalha, 
    b.vencedor_id
from personagens p
left join batalhas b on b.personagem1_id = p.id OR b.personagem2_id = p.id ;

select 
	p.nome as personagem, 
    c.nome as classe, 
    c.tipo_ataque
from personagens p
right join classes c ON p.classe_id = c.id;
