1-
select nome_aluno, data_matricula, round (months_between(sysdate, data_matricula), 0) from tb_alunos;
--
2-
select * from(
  select nome_aluno, trunc(months_between(sysdate, data_matricula)) qt_meses
  from tb_alunos 
  where data_matricula not like 'null'  
  order by trunc(months_between(sysdate, data_matricula)) desc) 
where rownum = 1;
--
3-
aLTER TABLE tb_alunos 
add med_alunos decimal(2,1);
--
4-
update tb_alunos set med_alunos = 10
where cod_aluno = 3
--
5-
select sum(med_alunos)/count(cod_aluno)
from tb_alunos;
--
6-
select round(sum(med_aluno)/count(cod_aluno), 2) 
from tb_alunos;
