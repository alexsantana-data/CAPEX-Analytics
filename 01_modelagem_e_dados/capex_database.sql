CREATE DATABASE db_capex;

USE db_capex;

CREATE TABLE tb_projetos (
    id_projeto INT NOT NULL PRIMARY KEY,
    nome_projeto VARCHAR(50) NOT NULL,
    gestor_aprovador VARCHAR(50) NOT NULL,
    centro_custos VARCHAR(50) NOT NULL,
    ordem_investimento VARCHAR(20) NOT NULL
);

CREATE TABLE tb_financeiro (
    id_projeto INT NOT NULL PRIMARY KEY,
    valor_budget DECIMAL(15,2) NULL,
    valor_real DECIMAL(15,2) NULL,
    valor_compromisso DECIMAL(15,2) NULL,
    valor_provisao DECIMAL(15,2) NULL,
    valor_disponivel DECIMAL(15,2) NULL,

    FOREIGN KEY (id_projeto) REFERENCES tb_projetos(id_projeto)
);
