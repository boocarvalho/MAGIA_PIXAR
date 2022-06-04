-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE pixar;

USE pixar;

CREATE TABLE votacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	filme VARCHAR(50)
);

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50)
);

CREATE TABLE VotacaoUsuario (
fkid INT, FOREIGN KEY (fkid) REFERENCES votacao (id),
fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
PRIMARY KEY (fkid,fkUsuario),
votos INT
);


/* para sql server - remoto - produção */
CREATE DATABASE pixar;

USE pixar;

CREATE TABLE votacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	filme VARCHAR(50)
);

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50)
);

CREATE TABLE VotacaoUsuario (
fkid INT, FOREIGN KEY (fkid) REFERENCES votacao (id),
fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
PRIMARY KEY (fkid,fkUsuario),
votos INT
);