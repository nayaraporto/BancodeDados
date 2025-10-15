create database escola;
use escola;
create table turma(
id_turma int primary key not null auto_increment,
nome_turma varchar(50) not null,
ano int not null
);

use escola;
create table alunos(
id_aluno int primary key not null auto_increment,
nome varchar(100) not null,
data_nascimento date,
turma_id int,
foreign key (turma_id) references turma (id_turma)
);

use escola;
create table disciplinas(
id_disciplina int primary key not null auto_increment,
nome_disciplina varchar(100) not null
);

use escola;
create table professores(
id_professor int primary key not null auto_increment,
nome varchar(100) not null,
especialidade varchar(100) not null
);

create table notas(
id_nota int primary key not null auto_increment,
aluno_id int not null,
foreign key (aluno_id) references alunos(id_aluno),
disciplina_id int not null,
foreign key (disciplina_id) references disciplinas(id_disciplina),
professor_id int not null,
foreign key (professor_id) references professores(id_professor),
nota decimal(4,2) not null
);

insert into turma (nome_turma, ano)
values 
('Senai', 2025),
('Senaii', 2025);

select * from turmas;

insert into alunos (nome, data_nascimento, turma_id)
values 
('Nayara', '2008-12-18' , 2),
('Murillo', '2009-02-09', 1),
('Malu', '2008-07-23', 1),
('Ana', '2009-04-13', 2),
('Júlia', '2008-11-1', 1),
('Simone', '1976-11-30', 1),
('José', '1970-11-24', 1),
('Débora', '1998-11-22', 2),
('Sônia', '1962-11-14', 2),
('Arthur', '2018-10-13', 2);

select * from alunos;

insert into disciplinas (nome_disciplina)
values 
('Banco de Dados'),
('HTML'),
('Backend'),
('Linguagem de Marcação');

select * from disciplinas;

insert into professores (nome, especialidade)
values 
('Erica', 'HTML'),
('Wellington', 'Linguagem de Marcação'),
('Adriano', 'Backend'),
('André', 'Banco de Dados');

select * from professores;

insert into notas (aluno_id, disciplina_id, professor_id, nota)
value 
(1, 1, 1, 10),
(2, 2, 2, 8),
(3, 3, 3, 7),
(4, 4, 4, 9),
(5, 1, 1, 10),
(6, 2, 2, 7),
(7, 3, 3, 10),
(8, 4, 4, 10),
(9, 1, 1, 8),
(10, 2, 2, 7);


select * from notas;
