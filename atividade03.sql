5
select nome_aluno, nome_disc, nota_aluno from tb_alunos
full outer join tb_notas on tb_alunos.cod_aluno = tb_notas.cod_nota_aluno
full outer join tb_disciplinas on tb_disciplinas.cod_disc = tb_notas.cod_nota_disc
order by nota_aluno desc;
--
select nome_aluno, nome_disc, nota_aluno from tb_alunos
left join tb_notas on tb_alunos.cod_aluno = tb_notas.cod_nota_aluno
left join tb_disciplinas on tb_disciplinas.cod_disc = tb_notas.cod_nota_disc
order by nota_aluno desc;

6
select nome_aluno, cod_disc, nome_disc, nota_aluno from tb_alunos
inner join tb_notas on tb_alunos.cod_aluno = tb_notas.cod_nota_aluno
inner join tb_disciplinas on tb_disciplinas.cod_disc = tb_notas.cod_nota_disc
where tb_notas.nota_aluno < 6;

7
select nome_aluno from tb_alunos
order by nome_aluno asc;

8
select nome_aluno from tb_alunos
where nome_aluno not like ('A%')
order by nome_aluno asc;

9
select distinct nota_aluno from tb_notas;

10
select nome_aluno from tb_alunos
where nome_aluno like ('%8%');

11
SELECT TRANSLATE(NOME_ALUNO, '8', 'O') from tb_alunos;

12
UPDATE TB_ALUNOS
SET NOME_ALUNO = TRANSLATE(NOME_ALUNO, '8', 'O');
-- efetuar commit

13
insert into tb_notas values (15,3,10);
insert into tb _notas values (11,1,6);
-- (cod aluno, cod disciplina, nota)
-- vai inserindo um por um

14
15
commit;

16
select avg(nota_aluno), cod_nota_disc from tb_notas
group by cod_nota_disc;

