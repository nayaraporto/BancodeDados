use mercado; 
select nome, preco, quantidade from produto where categoria not in ('Higiene', 'limpeza', 'padaria') 
and preco > 30 and quantidade < 50 order by preco asc;

use mercado;
select nome, preco, quantidade from produto where categoria = ('Alimentos' or 'Bebidas')
and preco > 30 and quantidade < 50 order by preco asc;

use mercado;
select nome, preco, quantidade from produto where categoria in ('Alimento' or 'bebida') 
and preco > 30 and quantidade < 50 order by preco asc;

use mercado;
select nome, preco, quantidade from produto where categoria = ('Alimento' or 'bebida') 
and preco >30 and quantidade <50 order by preco asc;

use mercado;
select nome, quantidade from produto where ( nome  like '%Arroz%' or nome like '%Feijão%')
and categoria = ('Alimento' or 'bebida') order by quantidade asc;

use mercado;
select nome, quantidade from produto where categoria not in ('Limpeza') and not nome like '%Sabonete%'
order by quantidade asc;

use mercado;
select nome, quantidade from produto where categoria in ('Higiene') or nome like '%Shampoo%'
order by quantidade asc;

use mercado;
select nome, quantidade from produto where categoria not in ('Limpeza') or ('Padaria') 
and nome like '%a%' order by quantidade asc;

use mercado;
select nome, quantidade from produto where categoria in ('Alimentos') and ('Bebidas') or ('Higiene')
and not nome like '%Óleo%' or not nome like '%Coca-Cola%' order by quantidade asc;


