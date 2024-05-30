drop database noisecon;
create database noisecon;

use noisecon;

CREATE TABLE usuario (
  id INT PRIMARY KEY auto_increment,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL
);

CREATE TABLE Comentario (
  id INT auto_increment,
  fkUsuario INT,
  fkPostagem INT,
  titulo VARCHAR(100) NOT NULL,
  descricao VARCHAR(900) NOT NULL,
  dataPostagem DATETIME default current_timestamp,
  PRIMARY KEY (id, fkUsuario),
  FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
  FOREIGN KEY (fkPostagem) REFERENCES Comentario(id)
);

select * from usuario;

select * from comentario;
