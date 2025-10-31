create database torneio_luta;
use torneio_luta;

-- Tabela de Academias
create table academias (
id int primary key auto_increment,
nome varchar(50),
cidade varchar(50)
);

-- Tabela de Lutadores
use torneio_luta;
create table lutadores (
id int primary key auto_increment,
nome varchar(50),
estilo varchar(30),
academia_id int,
foreign key (academia_id) references academias(id)
);

-- Tabela de Lutas
use torneio_luta;
create table lutas (
id int primary key auto_increment,
lutador1_id int,
lutador2_id int,
vencedor_id int,
foreign key (lutador1_id) references lutadores(id),
foreign key (lutador2_id) references lutadores(id),
foreign key (vencedor_id) references lutadores(id)
);


-- Academias
insert into academias (nome, cidade) values
('Gracie Barra', 'São Paulo'),
('Dragon Dojo', 'Curitiba'),
('Konoha Team', 'Rio de Janeiro'),
('Eagle Fight', 'Salvador');

-- Lutadores
insert into lutadores (nome, estilo, academia_id) values
('Ryu', 'Karate', 1),
('Ken', 'Kickboxing', 1),
('Goku', 'Kung Fu', 2),
('Vegeta', 'Boxe', 2),
('Naruto', 'Ninjutsu', 3),
('Sasuke', 'Ninjutsu', 3),
('Baki', 'Grappling', null), -- ainda sem academia
('Sakura', 'Jiu-Jitsu', null); -- ainda sem academia

-- Lutas
insert into lutas (lutador1_id, lutador2_id, vencedor_id) values
(1, 2, 1), -- Ryu venceu Ken
(3, 4, 3), -- Goku venceu Vegeta
(5, 6, 5); -- Naruto venceu Sasuke


select 
	l.nome as Lutador,
	l.estilo as Estilo,
	a.nome as Academia,
	a.cidade as Cidade
from lutadores l
inner join academias a on l.academia_id = a.id;

select
	l.nome as Lutador,
	l.estilo as Estilo,
	a.nome as Academia
from lutadores l
left join academias a on l.academia_id = a.id;

select
	l.nome as Lutador,
	l.estilo as Estilo,
	a.nome as Academia
from lutadores l
right join academias a on l.academia_id = a.id;

select
	l.nome as Lutador,
	a.nome as Academia
from lutadores l
left join academias a on l.academia_id = a.id

union

select
	l.nome as Lutador,
	a.nome as Academia
from lutadores l
right join academias a on l.academia_id = a.id;

select
	l1.nome as Lutador_1,
    l2.nome as Lutador_2,
    v.nome as Vencedor
from lutas l
inner join lutadores l1 on l.lutador1_id = l1.id
inner join lutadores l2 on l.lutador2_id = l2.id
inner join lutadores v on l.vencedor_id = v.id;

select 
	a.nome as Academia, count(l.id) as Total_Lutadores
    from academias a
    left join lutadores l on a.id = l.academia_id
    group by a.nome;
    
select 
	l.nome
    from lutadores l 
    left join lutas lu1 on l.id = lu1.lutador1_id
    left join lutas lu2 on l.id = lu2.lutador2_id
    where lu1.id is null and lu2.id is null;





