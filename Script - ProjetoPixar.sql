USE PIXAR;

select filme, count(filme) as votos from votacao group by filme; -- SELECT PARA RECEBIMENTO DE DADOS DA API
select * from votacao;
select *from usuario;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50)
);

INSERT INTO usuario VALUES 
(NULL,'Bruna Carvalho'),
(NULL,'Bianca Barranjard'),
(NULL,'Veronica'),
(NULL,'Laura Carvalho'),
(NULL,'Maria de Lourdes');


CREATE TABLE VotacaoUsuario (
fkid INT, FOREIGN KEY (fkid) REFERENCES votacao (id),
fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
PRIMARY KEY (fkid,fkUsuario),
votos INT
);

INSERT INTO VotacaoUsuario VALUES 
(2,1,8),
(21,2,8);



SELECT * FROM votacao;
SELECT * FROM usuario;
SELECT * FROM votacaoUsuario;

SELECT * FROM votacao ORDER BY filme ASC;
SELECT filme, COUNT(filme) FROM votacao GROUP BY filme;
SELECT * FROM votacao WHERE filme LIKE 'M%';
SELECT nome, filme FROM votacao where nome like 'B%';

