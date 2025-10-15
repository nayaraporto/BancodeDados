CREATE DATABASE empresa;
use empresa;
create table departamento(
depcodigo int primary key auto_increment,
depnome varchar(50)
);

use empresa;
create table funcionario(
funcodigo int primary key auto_increment,
depcodigo int,
funnome varchar(100),
funnascimento date,
funsalario numeric(10,2),
foreign key (depcodigo) references departamento(depcodigo)
);

use empresa;
create table dependente(
depencodigo int primary key auto_increment,
funcodigo int,
depennome varchar(100),
 foreign key (funcodigo) references funcionario(funcodigo)
);
