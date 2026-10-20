# CAPEX Analytics | Data Analytics aplicado à Gestão de Investimentos

Projeto de análise de dados aplicado à gestão de investimentos CAPEX, desenvolvido para transformar dados financeiros em informações estratégicas para a tomada de decisão.

O objetivo é analisar a execução orçamentária, identificar desvios financeiros e destacar projetos que demandam atenção da gestão.

## 🎯 Objetivo do Projeto

Responder a três perguntas de negócio:

- Como está a execução financeira do portfólio CAPEX?
- Quais projetos apresentam risco ou exposição acima do orçamento?
- Como identificar oportunidades de melhoria no acompanhamento dos investimentos?

## 🛠️ Tecnologias Utilizadas

- **SQL Server:** modelagem de banco de dados, consultas e análises financeiras.
- **SQL:** cálculos de indicadores, classificação de projetos e identificação de desvios.
- **Power BI:** construção de dashboard executivo e visualização dos indicadores.

## 📊 Indicadores Analisados

- **Execução Financeira (%):** valor realizado em relação ao orçamento.
- **Exposição Financeira (%):** realizado, compromissos e provisões em relação ao orçamento.
- **Projetos Acima do Orçamento:** quantidade de projetos cuja exposição supera o budget.
- **Valor Total Acima do Budget:** soma dos excedentes financeiros identificados.
- **Status Financeiro:** classificação dos projetos conforme sua exposição orçamentária.

## 🔎 Principais Resultados

Na base demonstrativa utilizada neste projeto:

- **78,19%** de execução financeira do portfólio.
- **94,35%** de exposição financeira consolidada.
- **1 projeto** identificado acima do orçamento.
- **R$ 3.444,18** de exposição excedente ao budget nesse projeto.

O projeto identificado apresentou exposição financeira de 100,36% do orçamento, indicando a necessidade de acompanhamento gerencial.

📈 Dashboard Power BI

O dashboard executivo consolida os principais indicadores financeiros, apresenta barras de progresso para execução e exposição e permite analisar a situação financeira individual dos projetos.

Arquivo: CAPEX_Analytics.pbix

🗂️ Estrutura do Repositório

01_modelagem_e_dados/ — scripts de criação do banco e das tabelas.

02_dados/ — scripts de carga dos dados demonstrativos.

03_analises_sql/ — consultas e análises financeiras.

04_kpis/ — definições e regras de cálculo dos indicadores.

CAPEX_Analytics.pbix — dashboard desenvolvido no Power BI.

⚠️ Premissas e Limitações

Os dados utilizados são sintéticos e destinados à demonstração técnica. Os limites de classificação financeira são critérios iniciais de análise.

A exposição financeira representa o realizado somado aos compromissos e às provisões; não equivale necessariamente ao caixa disponível ou ao valor já pago. Indicadores financeiros, isoladamente, também não comprovam a entrega física ou os benefícios gerados pelos projetos.

💡 Aplicação de Negócio

Este projeto demonstra como conhecimentos de processos, gestão de projetos e controle financeiro podem ser combinados com ferramentas de dados para estruturar análises, identificar desvios e apoiar decisões gerenciais.

Projeto de portfólio | Data Analytics • SQL Server • Power BI • CAPEX
