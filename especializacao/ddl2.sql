--Exemplo de especialização parcial exclusiva
-- CREATE TABLE pessoa (
--     id SERIAL PRIMARY KEY,
--     tipo VARCHAR(20),
--     nome VARCHAR(100),
--     endereco VARCHAR(200)
-- );

-- CREATE TABLE cliente (
--     id_cliente INT PRIMARY KEY REFERENCES pessoa(id),
--     cpf VARCHAR(11),
--     telefone VARCHAR(20)
-- );

-- CREATE TABLE funcionario (
--     id_funcionario INT PRIMARY KEY REFERENCES pessoa(id),
--     salario DECIMAL(10, 2),
--     cargo VARCHAR(50)
-- );

--Exemplo de especialização parcial sobreposta
CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY REFERENCES pessoa(id),
    cpf VARCHAR(11),
    telefone VARCHAR(20)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY REFERENCES pessoa(id),
    salario DECIMAL(10, 2),
    cargo VARCHAR(50)
);

CREATE TABLE pessoa_controller (
    id_pessoa INT REFERENCES pessoa(id),
    tipo VARCHAR(20),
    PRIMARY KEY (id_pessoa, tipo) 
);