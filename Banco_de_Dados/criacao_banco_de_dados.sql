create database quizzes_empresas; 

create table funcionarios
(id_funcionario serial primary key, 
nome_func varchar(100) not null, 
email_func varchar(255) unique not null check(email_func~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Z|a-z]{2,}$' ), 
departamento_func varchar(100) not null); 

create table quizz 
(id_quizz serial primary key,
tema_quizz varchar(100) not null, 
data_limite DATE);

create table perguntas 
(id_pergunta serial primary key, 
descricao_pergunta varchar(255) not null,
opcao_a varchar(100), 
opcao_b varchar(100), 
opcao_c varchar(100), 
opcao_d varchar(100), 
opcao_correta char (1) not null,
id_quizz int,
foreign key (id_quizz) references quizz (id_quizz)
);

create table respostas 
(id_resposta serial primary key, 
opcao_escolhida char(1) not null, 
id_funcionario int,
id_pergunta int,
foreign key (id_funcionario) references funcionarios (id_funcionario),
foreign key (id_pergunta) references perguntas (id_pergunta));

create table participacao
(id_resposta serial primary key, 
data_participacao date default CURRENT_DATE, 
id_funcionario int,
id_quizz int,
foreign key (id_funcionario) references funcionarios (id_funcionario), 
foreign key (id_quizz) references quizz (id_quizz));

alter table respostas add constraint check_opcao_escolhida CHECK (opcao_escolhida BETWEEN 'a' AND 'd');
alter table respostas drop constraint check_opcao_escolhida; 
alter table respostas add constraint check_opcao_escolhida check(opcao_escolhida IN ('a', 'b', 'c', 'd'));
