create database escola;
use escola;
create table aluno(
id_aluno int primary key auto_increment,
nome_aluno varchar(255) not null,
idade int not null,
cpf bigint not null
);