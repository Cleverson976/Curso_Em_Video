USE cadastro;

SELECT * FROM curso;

DESCRIBE curso;

INSERT INTO curso (nome, descricao, carga, totalaulas, ano)
VALUES ('HTML5', 'Curso de HTML5', '40', '37', '2014'),
	   ('Algoritmo', 'Lógica de Programação', '20', '15', '2014'),
       ('Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
       ('Youtube', 'Gerar polemica e ganhar inscritos', '5', '2', '2020'),
       ('PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
       ('Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
       ('Teste', 'Testando', '0', '0', '0000');

# O COMANDO ABAIXO SERVE PARA MODIFICAR UM DADO REGISTRADO EM UMA DETERMINADA COLUNA.
UPDATE curso
SET nome = 'HTML5'
WHERE idcurso = '1'; 

# O COMANDO ABAIXO SERVER PARA ALTERAR OS DADOS EM DUAS COLUNAS AO MESMO TEMPO
UPDATE curso
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '5';

UPDATE curso
SET nome = 'Java', carga = '40', ano = '2020'
WHERE idcurso = '6'
LIMIT 1; # ESSE COMANDO SERVE PARA LIMITAR AS LINHAS AFETADAS!

# O COMANDO ABAIXO SERVE PARA DELETAR LINHAS DE UMA TABELA
DELETE FROM curso WHERE idcurso = '7';

# O COMANDO ABAIXO SERVE PARA APAGAR TODOS OS REGISTROS DE UMA TABELA
-- TRUNCATE curso;