-- INSERÇÃO DE DADOS

-- PESSOA FÍSICA

-- ALUNO

START TRANSACTION;

INSERT INTO Pessoa_Fisica 
    (cpf, nome_completo, data_nascimento, endereco, telefone, email)
VALUES 
    ('11122233344', 'Ana Silva', '2005-03-15', 'Rua das Flores, 123', '11988776655', 'ana.silva@email.com');

SET @last_pf_id = LAST_INSERT_ID();

INSERT INTO Aluno 
    (matricula, curso, id_pessoa_fisica)
VALUES 
    ('MAT2025001', 'Engenharia de Software', @last_pf_id);

COMMIT;

-- PROFESSOR

START TRANSACTION;

INSERT INTO Pessoa_Fisica 
    (cpf, nome_completo, data_nascimento, endereco, telefone, email)
VALUES 
    ('55566677788', 'Bruno Costa', '1980-10-20', 'Avenida Principal, 456', '21977665544', 'bruno.costa@email.com');

SET @last_pf_id = LAST_INSERT_ID();

INSERT INTO Professor 
    (departamento, titulacao, id_pessoa_fisica)
VALUES 
    ('Ciência da Computação', 'Doutorado', @last_pf_id);

COMMIT;

-- PESSOA JURÍDICA

-- FORNECEDOR

START TRANSACTION;

INSERT INTO Pessoa_Juridica 
    (cnpj, razao_social, nome_fantasia)
VALUES 
    ('12345678000199', 'Soluções de TI e Serviços Ltda', 'Soluções de TI');

SET @last_pj_id = LAST_INSERT_ID();

INSERT INTO Fornecedor
    (ramo_atividade, dados_bancarios, email_contato, telefone_contato, id_pessoa_juridica)
VALUES
    ('Serviços de TI', 'Banco XYZ, Ag 001, C/C 98765-4', 'contato@solucoesti.com', '1155554433', @last_pj_id);

COMMIT;

-- CONSULTAS

SELECT * FROM pessoa_fisica;
SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM pessoa_juridica;
SELECT * FROM fornecedor;
