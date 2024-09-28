create DATABASE redesocial;
USE  redesocial;

CREATE TABLE Usuario (
    id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL unique,
    Email VARCHAR(100) NOT NULL unique,
    Senha VARCHAR(20) NOT NULL
);

CREATE TABLE Postagem (
    idPostagem INT PRIMARY KEY AUTO_INCREMENT,
    Conteudo VARCHAR(200) NOT NULL,
    Data_Hora_Postagem DATETIME NOT NULL,
    Usuario_id_Usuario INT,
    FOREIGN KEY (Usuario_id_Usuario) REFERENCES Usuario(id_Usuario)
);

CREATE TABLE Comentario (
    idComentario INT PRIMARY KEY AUTO_INCREMENT,
    Conteudo VARCHAR(200) NOT NULL,
    Data_Hora_Comentario DATETIME NOT NULL,
    Postagem_idPostagem INT,
    Usuario_id_Usuario INT,
    FOREIGN KEY (Postagem_idPostagem) REFERENCES Postagem(idPostagem),
    FOREIGN KEY (Usuario_id_Usuario) REFERENCES Usuario(id_Usuario)
);


CREATE TABLE Curtida (
    idCurtida INT PRIMARY KEY AUTO_INCREMENT,
    Postagem_idPostagem INT,
    Usuario_id_Usuario INT,
    FOREIGN KEY (Postagem_idPostagem) REFERENCES Postagem(idPostagem),
    FOREIGN KEY (Usuario_id_Usuario) REFERENCES Usuario(id_Usuario)
);

select * from usuario;
select * from comentario;