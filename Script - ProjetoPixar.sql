CREATE TABLE votacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	filme VARCHAR(50)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
filme VARCHAR (50)
);

-- INSERINDO DADOS
INSERT INTO usuario values
(null, 'Pete Docter','Up'),
(null, 'John Lasseter','Toy Story'),
(null, 'Andrew Stanton','Vida de inseto'),
(null, 'Dan Scanlon','Dois Irmaos'),
(null, 'Enrico Casarosa','Luca'),
(null, 'Adrian Molina','Viva');

-- "selects" da tabela diretor
select * from usuario;
select * from usuario order by filme;


-- "selects" da tabela votacao
select filme, count(filme) as votos from votacao group by filme;
select * from votacao;
select * from votacao order by filme;
select * from votacao where filme like 'M%';
