/*Exercício 01*/
use games;
select nome, vendas_globais
from vendas order by vendas_globais desc
limit 20;

/*Exercício 02*/
use games;
select SUM(vendas_globais) as total_vendas_ps3
from vendas where plataforma = 'PS3';

/*Exercício 03*/
use games;
select avg (JP_vendas) as média_vendas_japao from vendas;

/*Exercício 04*/
use games;
select count(*) as publicado_Nintendo
from vendas where publicado = "Nintendo";

/*Exercício 05*/
use games;
select plataforma, SUM(vendas_globais) as total_vendas_globais
from vendas group by plataforma
order by total_vendas_globais desc;

/*Exercício 06*/
use games;
select genero,
    avg(NA_vendas) as media_vendas_NA,
    avg(EU_vendas) as media_vendas_EU,
    avg(JP_vendas) as media_vendas_JP,
    avg(outras_vendas) as media_vendas_outros from vendas
 group by genero
 order by genero;
 
 /*Exercício 07*/
 use games;
 select ano, count(*) AS total_jogos
from vendas
group by ano
order by ano;

/*Exercício 08*/
use games;
select ano, plataforma,
    SUM(vendas_globais) as total_vendas
from vendas group by ano, plataforma
order by ano, plataforma;