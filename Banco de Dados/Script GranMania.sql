CREATE DATABASE GranMania;

USE GranMania;

CREATE TABLE Personagem (
idPersonagem INT PRIMARY KEY auto_increment,
PersonagemFavorito VARCHAR(45)
)auto_increment=10;

INSERT INTO Personagem VALUES
	(null, 'Elesis'),
	(null, 'Lire'),
	(null, 'Arme'),
	(null, 'Lass'),
	(null, 'Ryan'),
	(null, 'Ronan'),
	(null, 'Jin'),
	(null, 'Sieghart'),
	(null, 'Mari'),
	(null, 'Dio'),
	(null, 'Zero'),
	(null, 'Rey'),
	(null, 'Lupus'),
	(null, 'Lin'),
	(null, 'Azin'),
	(null, 'Holy'),
	(null, 'Edel'),
	(null, 'Veigas'),
	(null, 'Uno');

    
CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
email VARCHAR(45) unique,
senha VARCHAR(45),
fkPersonagem INT,
foreign key (fkPersonagem) references Personagem (idPersonagem)
);

SELECT * FROM Personagem;

SELECT * FROM Usuario;

SELECT * FROM Usuario
	JOIN Personagem ON fkPersonagem = idPersonagem;
    
SELECT count(idUsuario) from Usuario;