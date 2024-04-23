desc tb_alunos;

select nome_aluno, sexo_aluno from tb_alunos;

select nome_aluno as "Nome do Aluno", 
cod_aluno as "Código", sexo_aluno as "Sexo"
from tb_alunos;

update tb_alunos set nome_aluno = 'ANTONIO PER'
where cod_aluno = 13; 
/*e = 22 */

select nome_aluno as "Nome do Aluno", 
cod_aluno as "Código", sexo_aluno as "Sexo"
from tb_alunos
where nome_aluno = 'ANTONIO';

update tb_alunos set sexo_aluno = 'F'
where cod_aluno in (5, 7, 8, 9, 10, 12, 17, 19);

select nome_aluno as "Nome do Aluno", 
cod_aluno as "Código", sexo_aluno as "Sexo"
from tb_alunos
where sexo_aluno = 'F';

select nome_aluno as "Nome do Aluno", 
cod_aluno as "Código", sexo_aluno as "Sexo"
from tb_alunos
where sexo_aluno = 'M' and cod_aluno > 8;

select nome_aluno, nome_disc, nota_aluno from tb_alunos
inner join tb_notas on tb_alunos.cod_aluno = tb_notas.cod_nota_aluno
inner join tb_disciplinas on tb_disciplinas.cod_disc = tb_notas.cod_nota_disc
where tb_notas.nota_aluno < 7;

/*
where tb_notas.nota_aluno <7;
where tb_alunos.data_matricula IS NULL;
where tb_notas.nota_aluno between 5 AND 7; 
where tb_alunos.nome_aluno LIKE 'A%' 
*/
