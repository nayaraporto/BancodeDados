CREATE DATABASE bd_teste;
use bd_teste;
create table tbusuarios(
iduser int,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);

use bd_teste;
create table pessoa(
id int,
bi varchar(45),
nome varchar(45),
datanascimento date,
telefone varchar(45),
email varchar(45)
);

use bd_teste;
create table tbfuncionario(
idfunc int,
Nome varchar(50),
Registro int,
Area varchar(30),
Gerencia varchar(20),
Det varchar(20),
turno varchar(10),
Cargo varchar(30),
Atividade varchar(50),
funcao varchar(30),
Vinculo varchar(30),
Situacao varchar(30)
);
