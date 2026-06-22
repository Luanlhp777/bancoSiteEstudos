CREATE DATABASE site_estudos;
USE site_estudos;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario ENUM('admin', 'editor') NOT NULL DEFAULT 'admin',
    criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE modulo (
    id_modulo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    slug VARCHAR(120) NOT NULL UNIQUE,
    ordem INT NOT NULL,
    status ENUM('ativo', 'inativo') NOT NULL DEFAULT 'ativo'
);

CREATE TABLE disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    id_modulo INT NOT NULL,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    slug VARCHAR(140) NOT NULL UNIQUE,
    status ENUM('ativo', 'inativo') NOT NULL DEFAULT 'ativo',

    FOREIGN KEY (id_modulo) REFERENCES modulo(id_modulo)
);

CREATE TABLE aula (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    id_disciplina INT NOT NULL,
    id_usuario INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    conteudo TEXT NOT NULL,
    data_aula DATE NOT NULL,
    criado_em DATETIME DEFAULT CURRENT_TIMESTAMP,
    atualizado_em DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status ENUM('ativo', 'inativo') NOT NULL DEFAULT 'ativo',

    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE imagem_aula (
    id_imagem INT AUTO_INCREMENT PRIMARY KEY,
    id_aula INT NOT NULL,
    caminho_imagem VARCHAR(255) NOT NULL,
    texto_alt VARCHAR(150),
    ordem INT DEFAULT 1,

    FOREIGN KEY (id_aula) REFERENCES aula(id_aula)
);