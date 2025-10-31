create database pedidos_lanche;
use pedidos_lanche;

create table clientes (
    id int primary key auto_increment,
    nome VARCHAR(50)
);

use pedidos_lanche;
create table produtos (
    id int primary key auto_increment,
    nome varchar(50),
    preco decimal(10,5)
);

use pedidos_lanche;
create table pedidos (
    id int primary key auto_increment,
    cliente_id int,
    data date,
    foreign key (cliente_id) references clientes(id)
);

use pedidos_lanche;
create table itens_pedido (
    id int primary key auto_increment,
    pedido_id int,
    produto_id int,
    quantidade int,
    foreign key (pedido_id) references pedidos(id),
    foreign key (produto_id) references produtos(id)
);

insert into clientes (nome) values
('Júlia'),
('Malu'),
('Nayara'),
('Murillo');

insert into produtos (nome, preco) values
('X-Burger', 17.00),
('Refrigerante', 6.00),
('Batata Frita', 8.00),
('Milkshake', 13.00);

insert into pedidos (cliente_id, data) values
(1, '2025-10-31'),
(2, '2025-10-31');

insert into itens_pedido (pedido_id, produto_id, quantidade) values
(1, 1, 1),
(1, 2, 1),
(2, 3, 2);


select
	c.nome as cliente, 
    p.id as pedido, 
    p.data
from clientes c
inner join pedidos p on p.cliente_id = c.id;

select
	c.nome as cliente, 
    p.id as pedido, 
    p.data
from clientes c
left join pedidos p on p.cliente_id = c.id;

select
	i.id as item, 
    pr.nome as produto, 
    pr.preco, 
    i.quantidade
from itens_pedido i
right join produtos pr on i.produto_id = pr.id;
