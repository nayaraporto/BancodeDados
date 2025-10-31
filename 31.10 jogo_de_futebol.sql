create database jogo_de_futebol;
use jogo_de_futebol;

create table jogadores(
id int primary key auto_increment,
nome varchar(50),
posicao_id int,
foreign key (posicao_id) references posicoes(id),
time_id int,
foreign key (time_id) references times(id)
);

use jogo_de_futebol;
create table times(
id int primary key auto_increment,
nome varchar(50),
cidade varchar(50)
);

use jogo_de_futebol;
create table posicoes(
id int primary key auto_increment,
nome varchar(50)
);

insert into jogadores (nome, time_id, posicao_id) values
('Pelé', 1, 1),
('Messi', 2, 1),
('Paquetá', 3, 1),
('Vinícius Júnior', 4, 1);

insert into times ( nome, cidade) values
('Corinthians', 'São Paulo'),
('Flamengo', 'Rio de Janeiro'),
('Barcelona', 'Rio de Janeiro'),
('Palmeiras', 'São Paulo');

insert into posicoes (nome) values
('Goleiro'),
('Atacante'),
('Zagueiro'),
('Meio-Campo');

select 
	j.nome as Jogador,
	t.nome as Times
from jogadores j
inner join times t on j.time_id = t.id

union

select 
	j.nome as Jogador,
    p.nome as Posicao
from jogadores j
inner join posicoes p on j.posicao_id = p.id;


select
	j.nome as Jogador,
    t.nome as Times
from jogadores j
left join times t on j.time_id = t.id;


select
    j.nome as Jogador,
    t.nome as Times
from jogadores j
right join times t on j.time_id = t.id; 


select
	j.nome as Jogador,
    t.nome as Times
from jogadores j
left join times t on j.time_id = t.id

union

select
    j.nome as Jogador,
    t.nome as Times
from jogadores j
right join times t on j.time_id = t.id; 
