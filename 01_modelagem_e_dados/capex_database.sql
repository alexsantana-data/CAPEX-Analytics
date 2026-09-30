CREATE DATABASE db_capex;

USE db_capex;

CREATE TABLE tb_projetos (
    id_projeto INT NOT NULL PRIMARY KEY,
    nome_projeto VARCHAR(50) NOT NULL,
    gestor_aprovador VARCHAR(50) NOT NULL,
    centro_custos VARCHAR(50) NOT NULL,
    ordem_investimento VARCHAR(20) NOT NULL
);
