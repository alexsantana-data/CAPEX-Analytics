USE db_capex;

-- =============================================
-- DADOS FINANCEIROS
-- =============================================

INSERT INTO tb_financeiro (
    id_projeto,
    valor_budget,
    valor_real,
    valor_compromisso,
    valor_provisao,
    valor_disponivel
)
VALUES
(6304, 1847352.68, 1418627.43, 183945.72, 87431.16, 157348.37),
(9330, 1216849.37, 987432.58, 126784.93, 53892.41, 48739.45),
(1138, 947683.52, 873921.64, 58743.29, 18462.77, 6555.82),
(5340, 2135948.41, 1764289.73, 192637.84, 71628.35, 97392.49),
(3536, 3187426.93, 2471835.27, 427593.68, 176842.19, 141155.79),
(4264, 2816374.85, 1998462.91, 347825.43, 218937.62, 251148.89),
(5314, 1489273.46, 1096384.72, 176428.57, 98463.18, 116832.99),
(2421, 763518.29, 681247.63, 48732.16, 16854.39, 1674.11),
(4268, 1736842.77, 1315728.46, 218637.94, 102483.57, 115992.80),
(9392, 914637.58, 728493.21, 97364.82, 31847.56, 56931.99);

-- =============================================
-- DADOS DE CONTROLADORIA
-- =============================================

INSERT INTO tb_controladoria (
    id_projeto,
    projeto_tipo,
    projeto_categoria,
    projeto_prioridade,
    projeto_impacto,
    projeto_area,
    projeto_ciclo
)
VALUES
(6304, 'Modernização', 'Produção', 'Alta', 'Produtividade', 'Envase', 'Execução'),
(9330, 'Substituição', 'Utilidades', 'Alta', 'Confiabilidade', 'Utilidades', 'Execução'),
(1138, 'Automação', 'Produção', 'Alta', 'Produtividade', 'Envase', 'Execução'),
(5340, 'Retrofit', 'Produção', 'Média', 'Eficiência', 'Usinagem', 'Execução'),
(3536, 'Automação', 'Produção', 'Crítica', 'Produtividade', 'Soldagem', 'Execução'),
(4264, 'Implantação', 'Meio Ambiente', 'Crítica', 'Compliance', 'Meio Ambiente', 'Execução'),
(5314, 'Implantação', 'Energia', 'Média', 'Eficiência', 'Utilidades', 'Execução'),
(2421, 'Upgrade', 'Tecnologia', 'Média', 'Automação', 'TI Industrial', 'Execução'),
(4268, 'Ampliação', 'Logística', 'Alta', 'Capacidade', 'Logística', 'Execução'),
(9392, 'Adequação', 'Segurança', 'Crítica', 'Compliance', 'Estamparia', 'Execução');
