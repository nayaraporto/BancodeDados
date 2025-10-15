create database livraria;
use livraria;
create table autores(
autor_id int primary key,
nome varchar(45) not null,
sobrenome varchar(45) not null
);

use livraria;
create table livros(
livro_id int primary key,
titulo varchar(45) not null,
ano_publicacao int,
autor_id int, 
foreign key (autor_id) references autores (autor_id)
);


alter table livros
add column genero varchar(50);

alter table livros
modify column ano_publicacao int not null;

alter table livros
add constraint ano_publicacao check (ano_publicacao > 1900);

alter table livros
drop column genero;

drop table livros;
drop table autores;



