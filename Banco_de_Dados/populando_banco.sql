insert into funcionarios (nome_func, email_func, departamento_func) values 
('Gustavo Pinheiro', 'gustavo@gmail.com', 'TI'), 
('Vitor Siqueira', 'vitor@gmail.com', 'Frontend'),
('Cesar Guerra', 'cesar@gmail.com', 'Executivo'),
('Mateus Zebendo', 'mateus@gmail.com', 'CEO')
;

insert into quizz (tema_quizz, data_limite) values 
('Cores', '2024-04-22'), 
('Matematica', '2024-03-25');

insert into perguntas (descricao_pergunta, opcao_a, opcao_b, opcao_c, opcao_d, opcao_correta, id_quizz) values
('Qual é a cor complementar do verde?', 'a - azul', 'b - vermelho', 'c - amarelo', 'd - laranja', 'b', 1),
('Qual a cor primária que não está presente na cor magenta?', 'a - azul', 'b - vermelho', 'c - amarelo', 'd - verde', 'c', 1),
('Qual a cor que absorve todos os outros comprimentos de onda da luz visível?', 'a - branco', 'b - preto', 'c - cinza', 'd - transparente', 'b', 1),
('Qual a cor do céu em um dia claro e sem nuvens?', 'a - azul', 'b - verde', 'c - branco', 'd - cinza', 'a', 1),
('Qual a cor da bandeira do Brasil?', 'a - verde e amarelo', 'b - azul e branco', 'c - vermelho e branco', 'd - preto e branco', 'a', 1);

insert into perguntas (descricao_pergunta, opcao_a, opcao_b, opcao_c, opcao_d, opcao_correta, id_quizz) values
('Quanto é 1+1 ?', 'a - 37', 'b - PI', 'c - 4.43', 'd - 2', 'd', 2), 
('Qual é a resposta de x+2=4 ?', 'a - 2', 'b - 4', 'c - 0', 'd - 1298', 'a', 2), 
('Quanto é 3*3+7', 'a - 89', 'b - x', 'c - 16', 'd - 15', 'c', 2), 
('Quanto vale PI (aproximadamente)?', 'a - 3.14', 'b - 977567.456', 'c - 123', 'd - 55555', 'a', 2);

select * from participacao;

update funcionarios set id_funcionario = 1 where id_funcionario = 9;

insert into respostas (opcao_escolhida, id_funcionario, id_pergunta) values 
('b', 1, 2), ('d', 1, 2), ('b', 1, 3), ('a', 1, 4),  ('a', 1, 5),
('c', 2, 2), ('a', 2, 2), ('c', 2, 3), ('b', 2, 4),  ('b', 2, 5),
('d', 3, 2), ('c', 3, 2), ('a', 3, 3), ('d', 3, 4),  ('a', 3, 5),
('a', 4, 2), ('d', 4, 2), ('c', 4, 3), ('a', 4, 4),  ('b', 4, 5);

create sequence nova_sequencia_id_resposta start with 1 increment by 1 no maxvalue no cycle; 
-- nova_sequencia_id_resposta é o nome da nova sequência que estamos criando. Ela começa em 2 (START WITH 2) e incrementa de 1 em 1 (INCREMENT BY 1). 
--Não definimos um valor máximo (NO MAXVALUE) nem permitimos que a sequência faça um ciclo quando atingir o valor máximo (NO CYCLE)

update respostas set id_resposta = nextval('nova_sequencia_id_resposta');
-- nova_sequencia_id_resposta é o nome da nova sequência que estamos criando. Ela começa em 2 (START WITH 2) e incrementa de 1 em 1 (INCREMENT BY 1). ]
--Não definimos um valor máximo (NO MAXVALUE) nem permitimos que a sequência faça um ciclo quando atingir o valor máximo (NO CYCLE)

insert into participacao (id_funcionario, id_quizz) select id_funcionario, id_quizz from funcionarios, quizz;