# CAPEX Analytics | Data Analytics aplicado à Gestão de Investimentos

Projeto de Data Analytics aplicado à gestão de investimentos CAPEX, desenvolvido para transformar dados financeiros em informações estratégicas para a tomada de decisão.

O objetivo é analisar a execução orçamentária, identificar desvios financeiros e destacar projetos que demandam atenção da gestão.

## 🎯 Objetivo do Projeto

Responder a três perguntas de negócio:

- Como está a execução financeira do portfólio CAPEX?
- Quais projetos apresentam risco ou exposição acima do orçamento?
- Como melhorar o acompanhamento financeiro dos investimentos?

## 🛠️ Tecnologias Utilizadas

- **SQL Server:** modelagem e armazenamento dos dados.
- **SQL:** consultas, cálculos de indicadores e identificação de desvios.
- **DAX:** criação de medidas e KPIs no Power BI.
- **Power BI:** dashboard executivo e visualização dos resultados.

## 📊 Indicadores Analisados

- **Execução Financeira (%):** valor realizado em relação ao orçamento.
- **Exposição Financeira (%):** realizado, compromissos e provisões em relação ao orçamento.
- **Projetos Acima do Orçamento:** quantidade de projetos cuja exposição supera o budget.
- **Valor Total Acima do Budget:** soma dos excedentes financeiros identificados.
- **Status Financeiro:** classificação dos projetos conforme sua exposição orçamentária.

## 🔎 Principais Resultados

Na base demonstrativa utilizada neste projeto:

- **78,19%** de execução financeira consolidada.
- **94,35%** de exposição financeira consolidada.
- **1 projeto** identificado acima do orçamento, entre 10 projetos analisados.
- **R$ 3.444,18** de exposição excedente ao budget.

O projeto identificado apresentou exposição financeira de **100,36% do orçamento**, indicando a necessidade de acompanhamento gerencial.

## 📈 Dashboard Power BI

O dashboard executivo consolida os principais indicadores financeiros, apresenta barras de progresso para execução e exposição e permite analisar a situação financeira individual dos projetos.

### Visualização do Dashboard

![Dashboard executivo CAPEX](05_imagens/dashboard_capex.png)

**Arquivo Power BI:** [`capex_portfolio.pbix`](capex_portfolio.pbix)

## 🗂️ Estrutura do Repositório

- `01_modelagem_e_dados/` — scripts de criação do banco e das tabelas.
- `02_dados/` — scripts de carga dos dados demonstrativos.
- `03_analises_sql/` — consultas e análises financeiras.
- `04_kpis/` — definições e regras de cálculo dos indicadores.
- `05_imagens/` — imagens e capturas do dashboard.
- `capex_portfolio.pbix` — arquivo do dashboard desenvolvido no Power BI.

## ⚠️ Premissas e Limitações

Os dados utilizados são sintéticos e destinados à demonstração técnica. Os limites de classificação financeira são critérios iniciais de análise.

A exposição financeira representa o realizado somado aos compromissos e às provisões; não equivale necessariamente ao caixa disponível ou ao valor já pago.

Indicadores financeiros, isoladamente, também não comprovam a entrega física ou os benefícios gerados pelos projetos.

## 💡 Aplicação de Negócio

Este projeto demonstra como conhecimentos de processos, gestão de projetos e controle financeiro podem ser combinados com SQL Server e Power BI para estruturar análises, identificar desvios e apoiar decisões gerenciais.

---

**Projeto de portfólio | Data Analytics • SQL Server • SQL • DAX • Power BI • CAPEX**
