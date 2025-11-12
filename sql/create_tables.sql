-- CRIAÇÃO DA DATABASE

CREATE DATABASE IF NOT EXISTS senac_pti
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

-- CRIAÇÃO DAS TABELAS

USE senac_pti;

CREATE TABLE IF NOT EXISTS Pessoa_Fisica (
    id_pessoa_fisica INT NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL,
    nome_completo VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NULL,
    telefone VARCHAR(20) NULL,
    email VARCHAR(100) NULL, 
    
    PRIMARY KEY (id_pessoa_fisica),
    UNIQUE INDEX idx_cpf (cpf ASC)
);

CREATE TABLE IF NOT EXISTS Pessoa_Juridica (
    id_pessoa_juridica INT NOT NULL AUTO_INCREMENT,
    cnpj VARCHAR(14) NOT NULL,
    razao_social VARCHAR(255) NOT NULL,
    nome_fantasia VARCHAR(255) NULL,
    
    PRIMARY KEY (id_pessoa_juridica),
    UNIQUE INDEX idx_cnpj (cnpj ASC)
);

CREATE TABLE IF NOT EXISTS Aluno (
    id_aluno INT NOT NULL AUTO_INCREMENT,
    matricula VARCHAR(20) NOT NULL,
    curso VARCHAR(100) NOT NULL,

    id_pessoa_fisica INT NOT NULL,
    
    PRIMARY KEY (id_aluno),
    UNIQUE INDEX idx_matricula (matricula ASC),
    UNIQUE INDEX idx_fk_pf_aluno (id_pessoa_fisica ASC),
    
    CONSTRAINT fk_aluno_pessoa_fisica
        FOREIGN KEY (id_pessoa_fisica)
        REFERENCES Pessoa_Fisica (id_pessoa_fisica)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Professor (
    id_professor INT NOT NULL AUTO_INCREMENT,
    departamento VARCHAR(100) NOT NULL,
    titulacao VARCHAR(100) NOT NULL, 

    id_pessoa_fisica INT NOT NULL,
    
    PRIMARY KEY (id_professor),
    UNIQUE INDEX idx_fk_pf_professor (id_pessoa_fisica ASC),
    
    CONSTRAINT fk_professor_pessoa_fisica
        FOREIGN KEY (id_pessoa_fisica)
        REFERENCES Pessoa_Fisica (id_pessoa_fisica)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Fornecedor (
    id_fornecedor INT NOT NULL AUTO_INCREMENT,
    ramo_atividade VARCHAR(100) NULL,
    dados_bancarios VARCHAR(255) NULL, 
    email_contato VARCHAR(100) NULL, 
    telefone_contato VARCHAR(20) NULL, 
    

    id_pessoa_juridica INT NOT NULL,
    
    PRIMARY KEY (id_fornecedor),
    UNIQUE INDEX idx_fk_pj_fornecedor (id_pessoa_juridica ASC), 
    
    CONSTRAINT fk_fornecedor_pessoa_juridica
        FOREIGN KEY (id_pessoa_juridica)
        REFERENCES Pessoa_Juridica (id_pessoa_juridica)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);