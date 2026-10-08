USE db_capex;

-- =====================================================
-- CAPEX ANALYTICS
-- Análises SQL
-- =====================================================


-- =====================================================
-- ANÁLISE 01
-- Percentual de execução do CAPEX
-- Pergunta:
-- Quanto do orçamento aprovado de cada projeto já foi realizado?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,
    f.valor_real,

    CAST(
        f.valor_real / f.valor_budget * 100
        AS DECIMAL(10,2)
    ) AS percentual_execucao

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY percentual_execucao DESC;

-- =====================================================
-- ANÁLISE 02
-- Ranking de execução do CAPEX
-- Pergunta:
-- Quais projetos apresentam maior percentual de execução?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,
    f.valor_real,

    CAST(
        f.valor_real / f.valor_budget * 100
        AS DECIMAL(10,2)
    ) AS percentual_execucao

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY percentual_execucao DESC;
-- =====================================================
-- ANÁLISE 03
-- Saldo do Budget
-- Pergunta:
-- Quanto do orçamento ainda não foi realizado?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,
    f.valor_real,

    f.valor_budget - f.valor_real AS saldo_budget

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY saldo_budget DESC;


-- =====================================================
-- ANÁLISE 04
-- Exposição Financeira
-- Pergunta:
-- Qual é a exposição financeira de cada projeto,
-- considerando realizado, compromissos e provisões?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,
    f.valor_real,
    f.valor_compromisso,
    f.valor_provisao,

    f.valor_real
        + f.valor_compromisso
        + f.valor_provisao AS exposicao_financeira

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY exposicao_financeira DESC;


-- =====================================================
-- ANÁLISE 05
-- Percentual de Exposição Financeira
-- Pergunta:
-- Qual percentual do orçamento está exposto?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,

    f.valor_real
        + f.valor_compromisso
        + f.valor_provisao AS exposicao_financeira,

    CAST(
        (
            f.valor_real
            + f.valor_compromisso
            + f.valor_provisao
        ) / NULLIF(f.valor_budget, 0) * 100
        AS DECIMAL(10,2)
    ) AS percentual_exposicao

FROM tb_financeiro f

    
-- =====================================================
-- ANÁLISE 06
-- Classificação do Status Financeiro
-- Pergunta:
-- Quais projetos exigem atenção financeira?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,

    f.valor_real
        + f.valor_compromisso
        + f.valor_provisao AS exposicao_financeira,

    CAST(
        (
            f.valor_real
            + f.valor_compromisso
            + f.valor_provisao
        ) / NULLIF(f.valor_budget, 0) * 100
        AS DECIMAL(10,2)
    ) AS percentual_exposicao,

    CASE
        WHEN
            (
                f.valor_real
                + f.valor_compromisso
                + f.valor_provisao
            ) / NULLIF(f.valor_budget, 0) * 100 > 100
        THEN 'Acima do orçamento'

        WHEN
            (
                f.valor_real
                + f.valor_compromisso
                + f.valor_provisao
            ) / NULLIF(f.valor_budget, 0) * 100 >= 95
        THEN 'Atenção'

        ELSE 'Dentro do orçamento'
    END AS status_exposicao

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY percentual_exposicao DESC;

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY percentual_exposicao DESC;


-- =====================================================
-- ANÁLISE 07
-- Valor acima do orçamento
-- Pergunta:
-- Quanto cada projeto ultrapassa o orçamento aprovado?
-- =====================================================

SELECT
    p.nome_projeto,
    f.id_projeto,
    f.valor_budget,

    f.valor_real
        + f.valor_compromisso
        + f.valor_provisao AS exposicao_financeira,

    CASE
        WHEN
            (
                f.valor_real
                + f.valor_compromisso
                + f.valor_provisao
                - f.valor_budget
            ) > 0
        THEN
            (
                f.valor_real
                + f.valor_compromisso
                + f.valor_provisao
                - f.valor_budget
            )
        ELSE 0
    END AS valor_acima_budget

FROM tb_financeiro f

INNER JOIN tb_projetos p
    ON f.id_projeto = p.id_projeto

ORDER BY valor_acima_budget DESC;
