create table TB_alunos (
  Cod_aluno number(5) primary key,
  Nome_aluno varchar2(20) not null
);

select * from tb_alunos;

insert into tb_alunos 
(cod_aluno, nome_aluno) 
values 
(4, 'Cristina');
/* inserir uma linha de cada vez no insert into */

update tb_alunos set nome_aluno ='Pedro'
where cod_aluno = 3;

delete from tb_alunos 
where cod_aluno < 2;

update tb_alunos set nome_aluno ='Cristiane'
where cod_aluno = 4;

insert into tb_alunos 
(cod_aluno, nome_aluno)
values
(1, 'Paulo');

insert into tb_alunos 
(cod_aluno, nome_aluno)
values
(2, 'Claudio');
/* vai dar erro pois ja existe o aluno com cod 2 */


