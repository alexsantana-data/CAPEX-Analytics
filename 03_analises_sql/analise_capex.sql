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
