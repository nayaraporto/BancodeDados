CREATE DATABASE IF NOT EXISTS empresaEstudo;
USE empresaEstudo;

CREATE TABLE Departamentos (
    ID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(50) NOT NULL
);

-- Criação da Tabela de Funcionários
USE empresaEstudo;
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    NomeFuncionario VARCHAR(50) NOT NULL,
    ID_Departamento INT 
);


INSERT INTO Departamentos (ID, NomeDepartamento) VALUES
(1, 'Recursos Humanos'),
(2, 'Tecnologia'),
(3, 'Vendas'),
(4, 'Marketing'),
(5, 'Financeiro'),
(6, 'Jurídico'),
(7, 'Operações'),
(8, 'Logística'),
(9, 'Produção'),
(10, 'Qualidade'),
(11, 'Compras'),
(12, 'Atendimento ao Cliente'),
(13, 'Diretoria'),                 
(14, 'Manutenção'),
(15, 'Pesquisa e Desenvolvimento'),
(16, 'Contabilidade'),
(17, 'Design'),
(18, 'Segurança do Trabalho'),
(19, 'Infraestrutura'),
(20, 'Projetos');

-- Inserindo 20 registros na tabela de Funcionários
INSERT INTO Funcionarios (ID, NomeFuncionario, ID_Departamento) VALUES
(101, 'Ana Beatriz', 1),
(102, 'Bruno Costa', 2),
(103, 'Carla Dias', 2),
(104, 'Daniel Almeida', 3),
(105, 'Elena Souza', NULL),     
(106, 'Fábio Martins', 5),
(107, 'Gabriela Lima', 6),
(108, 'Heitor Gomes', 7),
(109, 'Isabela Rocha', 8),
(110, 'João Pereira', 9),
(111, 'Karina Oliveira', 10),
(112, 'Lucas Ferreira', 11),
(113, 'Mariana Barros', 12),
(114, 'Nelson Andrade', 14),
(115, 'Otávio Campos', NULL),    
(116, 'Patrícia Ribeiro', 16),
(117, 'Ricardo Neves', 17),
(118, 'Sofia Mendes', 18),
(119, 'Tiago Santos', 19),
(120, 'Vanessa Moraes', 20);


