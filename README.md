# SCTEC - Modulo I - Projeto Final

## Projeto Avaliativo - Módulo I - Visualização de Dados e Business Intelligence [T2]

**Aluno: ORLANDO VIEIRA DE CASTRO JUNIOR
Turma: Visualização de Dados e Business Intelligence [T2]**

### Objetivo do trabalho

Este projeto tem como objetivo analisar dados de Recursos Humanos utilizando o banco de dados [FreeSQL](https://freesql.com/), no esquema **Human Resources (HR)**, explorando informações sobre funcionários, cargos, departamentos, salários e localização geográfica.

A partir dessas informações, são realizadas consultas SQL e uma análise exploratória em Python para entender a distribuição de salários por departamento e cargo, bem como a distribuição dos funcionários por região, apoiando decisões simples de gestão e visualização de dados.



### Checklist de etapas do projeto

- [x] Acessar o ambiente FreeSQL e localizar o esquema **HR (Human Resources)**.
- [x] Selecionar as tabelas necessárias: EMPLOYEES, DEPARTMENTS, JOBS, LOCATIONS, COUNTRIES e REGIONS.
- [x] Implementar a Query 1 (salários por departamento e cargo) com pelo menos dois `LEFT JOIN` e um `WHERE` simples.
- [x] Implementar a Query 2 (funcionários por região) com pelo menos dois `LEFT JOIN` e um `WHERE` simples.
- [x] Executar as queries e validar os resultados no FreeSQL.
- [x] Exportar os resultados das queries para arquivos CSV (`salarios_por_depto_cargo.csv` e `funcionarios_por_regiao.csv`).
- [x] Salvar os códigos SQL em `Query_1.sql` e `Query_2.sql` no repositório.
- [X] Importar os arquivos CSV no Python (VS Code ou Jupyter Notebook) e realizar a EDA.
- [ ] Calcular estatísticas básicas (média, mediana, mínimo, máximo) para os salários.
- [ ] Criar pelo menos um histograma ou boxplot para visualizar a distribuição dos salários.
- [ ] Atualizar o `README.md` com objetivo, tabelas usadas, resumo das queries e principais resultados.
- [ ] Gravar o vídeo de apresentação técnica e incluir o link conforme orientações da atividade.



### Tabelas utilizadas

Para construir as consultas e gerar os arquivos CSV utilizados na análise, foram usadas as seguintes tabelas do esquema **HR**:

- **HR.EMPLOYEES**: contém os dados dos funcionários, como identificador (`EMPLOYEE_ID`), nome, cargo (`JOB_ID`), salário (`SALARY`) e departamento (`DEPARTMENT_ID`).
- **HR.DEPARTMENTS**: armazena os departamentos da empresa, com código (`DEPARTMENT_ID`), nome do departamento (`DEPARTMENT_NAME`) e local onde o departamento está instalado (`LOCATION_ID`).
- **HR.JOBS**: reúne os cargos disponíveis, incluindo código do cargo (`JOB_ID`), título (`JOB_TITLE`), salário mínimo (`MIN_SALARY`) e salário máximo (`MAX_SALARY`) associados a cada função.  
- **HR.LOCATIONS**: guarda informações de localização física, como cidade (`CITY`), estado ou província (`STATE_PROVINCE`), endereço e país (`COUNTRY_ID`).
- **HR.COUNTRIES**: lista os países, relacionando cada país a uma região através de `REGION_ID`.
- **HR.REGIONS**: define as regiões (por exemplo, Europa, Américas, Ásia), utilizadas para agrupar países e facilitar a análise geográfica.

### Resumo das consultas SQL

**Query 1 – Salários por departamento e cargo**

A [Query_1.sql](dados/Query_1.sql) relaciona as tabelas `HR.EMPLOYEES`, `HR.DEPARTMENTS` e `HR.JOBS` por meio de `LEFT JOIN`, trazendo, para cada funcionário, o departamento em que atua, o cargo ocupado e o respectivo salário. 

Com isso, é possível analisar a distribuição de salários por departamento e cargo, comparar faixas salariais entre setores e verificar se o salário do funcionário está dentro do intervalo mínimo e máximo definido para o seu cargo.

Os dados obtidos por meio dessa consulta foram exportados para o arquivo [salarios_por_depto_cargo.csv](dados/salarios_por_depto_cargo.csv) que contém os dados de salários por departamento e cargo.



**Query 2 – Funcionários por região (com localização)**

A [Query_2.sql](dados/Query_2.sql) amplia a análise incluindo as tabelas `HR.LOCATIONS`, `HR.COUNTRIES` e `HR.REGIONS`, além de `HR.EMPLOYEES` e `HR.DEPARTMENTS`, também utilizando `LEFT JOIN`.

Essa consulta permite observar, para cada funcionário, o departamento, a cidade, o estado/província, o país e a região em que está localizado, possibilitando análises de salários e distribuição geográfica por região, país e cidade.

Os dados obtidos por meio dessa consulta foram exportados para o arquivo [funcionarios_por_regiao.csv](dados/funcionarios_por_regiao.csv) que contém os dados de funcionários por região, incluindo informações de localização.


● Explicação da análise feita em Python;
● Principais resultados encontrados;
● Como executar o projeto;
● Sugestões de melhoria para futuras versões.
● Se possível, inclua também imagens dos gráfi cos gerados para facilitar a visualização dos resultados.
