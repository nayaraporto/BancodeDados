use mercado;

select * from produto order by nome asc;

select * from produto order by id asc;

select * from produto order by id desc;

delete from produto where id = '1004';


insert into produto (nome, preco, quantidade, categoria) VALUES
('maçã', 5.0, 100, 'Alimentos'),
('banana', 2.0, 100, 'Alimentos');


use mercado;
select nome, quantidade from produto where quantidade > 100;


use mercado; 
select id, nome, quantidade from produto where quantidade in (90, 100) order by quantidade asc;


use mercado;
select nome, preco, quantidade from produto where categoria in ('Alimentos', 'bebidas') 
and preco > 30 and quantidade < 50 order by preco asc;
