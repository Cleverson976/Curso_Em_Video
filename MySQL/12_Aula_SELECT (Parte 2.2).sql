USE cadastro;

# EXERCÍCIOS

# 1) = UMA LISTA COM O NOME DE TODOS 'AS GAFANHOTAS'
SELECT * FROM gafanhotos;
SELECT nome, sexo FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome;

# 2) = UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM ENTRE 1/JAN/2000 E 31/DEZ/2015
SELECT * FROM gafanhotos;
SELECT nome, nascimento FROM gafanhotos
WHERE nascimento >= '2000-01-01' AND nascimento <= '2015-12-31'
ORDER BY nome, nascimento;

# 3) = UMA LISTA COM O NOME DE TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADORES
SELECT * FROM gafanhotos;
SELECT nome, profissao, sexo FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador'
ORDER BY nome;

# 4) = UMA LISTA COM TODOS OS DADOS DE TODAS AS MULHERES QUE NASCERAM NO BRASIL E QUE TÊM SEU NOME INICIANDO COM A LETRA 'J'
SELECT * FROM gafanhotos;
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';

# 5) = UMA LISTA COM O NOME E NASCIONALIDADE DE TODOS OS HOMENS QUE TÊM 'SILVA' NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100KG.
SELECT * FROM gafanhotos;
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%Silva%' AND nacionalidade != 'Brasil' AND peso < 100.00;

# 6) = QUAL É A MAIOR ALTURA ENTRE GAFANHOTOS HOMENS QUE MORAM NO BRASIL.
SELECT * FROM gafanhotos;
SELECT MAX(altura) AS altura FROM gafanhotos;

# 7) = QUAL É A MÉDIA DE PESO DOS GAFANHOTOS CADASTRADOS?
SELECT * FROM gafanhotos;
SELECT AVG(peso) AS Peso FROM gafanhotos;

# 8) = QUAL É O MENOR PESO ENTRE AS GAFANHOTAS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 E 31/DEZ/2000?
SELECT * FROM gafanhotos;
SELECT MIN(peso) FROM gafanhotos
WHERE nacionalidade != 'BRASIL' AND nascimento > '1990-01-01' AND nascimento < '2000-12-31';

# 9) = QUANTAS GAFANHOTOS MULHERES TÊM MAIS DE 1.90M DE ALTURA
SELECT * FROM gafanhotos;
SELECT COUNT(nome) AS QTD_Mulheres_Maior_190cm FROM gafanhotos
WHERE sexo = 'F' AND altura > 1.90;