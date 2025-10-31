use empresaEstudo;
select *  from Funcionarios;

select
    f.nomeFuncionario,
	d.nomeDepartamento
from
    Funcionarios as f
left join
    Departamentos as d
on f.ID_Departamento = d.ID;
