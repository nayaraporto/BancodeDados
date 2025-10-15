create database locacao;
use locacao;

create table cliente (

codigo int primary key auto_increment,
nome varchar(45) not null,
endereco varchar(45) not null,
bairro varchar(44) not null,
cidade varchar(45) not null,
uf varchar(2) not null,
telefone varchar(45) not null
);

create table locacoes (

codigo int primary key auto_increment,
codigo_cliente int not null,
codigo_tiulo int not null,
data_saida datetime not null,
data_retorno datetime not null,
constraint cliente_locacoes foreign key(codigo)
references cliente(codigo)
);

create table titulo (

codigo int primary key auto_increment,
nome varchar(45) not null,
tipo varchar(45) not null,
locado bit not null,
constraint locacoes_titulo foreign key(codigo)
references locacoes(codigo)
);