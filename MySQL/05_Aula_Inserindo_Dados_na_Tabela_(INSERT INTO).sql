USE cadastro;

# SOLICITO UMA DESCRIÇÃO DA TABELA PARA FACILITAR A INCLUSÃO DE DADOS
DESCRIBE pessoa;

# O COMANDO ABAIXO SERVE PARA INCLUIR DADOS NA TABELA 'pessoa'
INSERT INTO pessoa (nome, nascimento, sexo, peso, altura)
VALUES ('Werike', '1993-08-25', 'M', 80.00, 1.74);

# INCLUINDO NOVOS DADOS NA TABELA 'pessoa'
INSERT INTO pessoa (nome, nascimento, sexo, peso, altura)
VALUES ('Leila', '1974-04-27', 'F', 83.00, 1.67);

# INCLUINDO NOVOS DADOS NA TABELA 'pessoa'
INSERT INTO pessoa(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, 'Godofredo', '1984-01-02', 'M', '78.50', 1.83, DEFAULT);

# INCLUINDO NOVOS DADOS NA TABELA 'pessoa'
INSERT INTO pessoa(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, 'Adalgiza', '1930-11-02', 'F', '63.20', 1.75, 'Irlanda'); # NESTE EXEMPLO ALTEREI O 'DEFAULT(nacionalidade)' PARA 'Irlanda'!

# O COMANDO ABAIXO SERVE PARA SELECIONAR TODOS OS DADOS/INSTÂNCIA DA TABELA 'pessoa'
SELECT * FROM pessoa;

