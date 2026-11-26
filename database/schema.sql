
-- Amar ao Próximo
-- Banco de dados do Sistema de Gestão de Doações

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS amar_ao_proximo;

CREATE DATABASE amar_ao_proximo
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE amar_ao_proximo;

-- Cadastro de doadores
CREATE TABLE doador (
    id_doador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Categorias dos produtos
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao VARCHAR(255)
);

-- Produtos que podem ser doados
CREATE TABLE item (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    nome VARCHAR(150) NOT NULL,
    unidade_medida VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

-- Registro das doações
CREATE TABLE doacao (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    id_doador INT NOT NULL,
    data_doacao DATE NOT NULL,
    observacao VARCHAR(255),
    FOREIGN KEY (id_doador)
        REFERENCES doador(id_doador)
);

-- Itens de cada doação
CREATE TABLE doacao_item (
    id_doacao INT NOT NULL,
    id_item INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (id_doacao, id_item),
    FOREIGN KEY (id_doacao)
        REFERENCES doacao(id_doacao)
        ON DELETE CASCADE,
    FOREIGN KEY (id_item)
        REFERENCES item(id_item)
);

-- Famílias beneficiadas
CREATE TABLE familia (
    id_familia INT AUTO_INCREMENT PRIMARY KEY,
    nome_responsavel VARCHAR(150) NOT NULL,
    quantidade_pessoas INT NOT NULL
        CHECK (quantidade_pessoas > 0),
    bairro VARCHAR(100),
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Entregas realizadas às famílias
CREATE TABLE entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_familia INT NOT NULL,
    data_entrega DATE NOT NULL,
    observacao VARCHAR(255),
    FOREIGN KEY (id_familia)
        REFERENCES familia(id_familia)
);

-- Itens distribuídos em cada entrega
CREATE TABLE entrega_item (
    id_entrega INT NOT NULL,
    id_item INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (id_entrega, id_item),
    FOREIGN KEY (id_entrega)
        REFERENCES entrega(id_entrega)
        ON DELETE CASCADE,
    FOREIGN KEY (id_item)
        REFERENCES item(id_item)
);
