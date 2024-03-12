create table tb_disciplinas (
cod_disc number(5) primary key,
nome_disc varchar2(20) not null );

create table tb_notas (
nota_aluno number(3,1) not null,
cod_nota_aluno number(5),
cod_nota_disc number(5) ,
foreign key (cod_nota_aluno)
references tb_alunos(cod_aluno),
foreign key (cod_nota_disc)
references tb_disciplinas(cod_disc)
);

alter table tbl_notas
rename to tb_notas;

select * from tb_notas;
desc tb_notas;
select * from tb_disciplinas;
desc tb_disciplinas;

alter table tb_alunos add sexo_aluno
char(1) constraint sexo_aluno_ck check 
(sexo_aluno in ('M', 'F'));

insert into tb_alunos 
(cod_aluno, nome_aluno, sexo_aluno)
values
(095, 'Katia', 'F');

insert into tb_disciplinas 
(cod_disc, nome_disc)
values
(3424, 'Portugues');


