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

CREATE TABLE tb_controladoria (
    id_projeto INT NOT NULL PRIMARY KEY,
    projeto_tipo VARCHAR(50) NOT NULL,
    projeto_categoria VARCHAR(50) NOT NULL,
    projeto_prioridade VARCHAR(50) NOT NULL,
    projeto_impacto VARCHAR(50) NOT NULL,
    projeto_area VARCHAR(50) NOT NULL,
    projeto_ciclo VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_projeto) REFERENCES tb_projetos(id_projeto)
);

CREATE TABLE tb_baseline (
    id_projeto INT NOT NULL,
    periodo DATE NOT NULL,
    valor_baseline DECIMAL(15,2) NOT NULL,

    PRIMARY KEY (id_projeto, periodo),
    FOREIGN KEY (id_projeto) REFERENCES tb_projetos(id_projeto)
);

CREATE TABLE tb_movimentos_financeiros (
    id_movimento INT NOT NULL PRIMARY KEY,
    id_projeto INT NOT NULL,
    valor_debito DECIMAL(15,2) NULL,
    valor_credito DECIMAL(15,2) NULL,
    tipo_gasto VARCHAR(50) NULL,
    faturamento_realizado DECIMAL(15,2) NULL,
    data_movimento DATE NOT NULL,
    tipo_movimento VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_projeto) REFERENCES tb_projetos(id_projeto)
);
