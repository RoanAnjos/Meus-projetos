# 📊 Relatório de Inteligência de Dados: Auditoria de Ativos e Resposta a Incidentes com SQL

[cite_start]**Analista:** Roan Silva dos Anjos [cite: 2]
[cite_start]**Especialidade:** Segurança de Dados & Análise de Vulnerabilidades [cite: 3]

## 🎯 Objetivo Estratégico
[cite_start]Este projeto demonstra a aplicação de SQL Avançado como ferramenta de defesa cibernética[cite: 5]. [cite_start]O foco foi a extração de inteligência a partir de bancos de dados relacionais para identificar superfícies de ataque, investigar tentativas de acesso não autorizadas e garantir o compliance de segurança da infraestrutura[cite: 6]. [cite_start]Ao cruzar dados de RH e TI, transformei dados brutos em ações preventivas para mitigação de riscos[cite: 7].

---

## 1. Identificação de Máquinas Vulneráveis (INNER JOIN)
[cite_start]**Cenário:** Necessidade de localizar funcionários de departamentos críticos (Vendas e Financeiro) que estão utilizando sistemas operacionais obsoletos (OS 1 e OS 2) para priorizar a atualização de segurança[cite: 9].

### Query Utilizada:
```sql
SELECT e.username, e.department, e.employee_id, m.device_id, m.operating_system
FROM employees AS e
INNER JOIN machines AS m ON e.device_id = m.device_id
WHERE (e.department = 'Sales' OR e.department = 'Finance')
AND m.operating_system NOT LIKE 'OS 3%';
[cite_start]``` [cite: 11, 12, 13, 14, 15]

[COLOQUE AQUI O PRINT DO RESULTADO DA QUERY 1]
[cite_start]*Figura 1: Cruzamento de dados para identificação de SO obsoleto[cite: 25, 26, 27, 28].*

---

## 2. Auditoria de Tentativas de Login Suspeitas
[cite_start]Investigação focada em padrões de acesso que fogem à política de segurança da empresa[cite: 30].

### A) Acessos Maliciosos Fora do Horário
[cite_start]Filtro aplicado para detectar tentativas de login que falharam após as 18:00, o que pode indicar tentativas de força bruta[cite: 31, 32].

```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00:00' AND success = 'FALSE'
ORDER BY login_time;
[cite_start]``` [cite: 46, 47, 48]

[COLOQUE AQUI O PRINT DO RESULTADO DA QUERY 2A]
[cite_start]*Figura 2: Logs de tentativas falhas após o horário comercial[cite: 49, 50, 51, 52].*

### B) Janela de Investigação de Incidente
[cite_start]Análise de todas as atividades ocorridas no período crítico de 08/05/2022 a 09/05/2022[cite: 71].

```sql
SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2022-05-08' AND '2022-05-09'
ORDER BY login_date, login_time;
[cite_start]``` [cite: 76, 77, 78, 79]

### C) Filtragem por Origem Geográfica
[cite_start]Exclusão de tráfego vindo de regiões validadas (México) para focar a análise em IPs externos e desconhecidos[cite: 98, 99].

```sql
SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';
[cite_start]``` [cite: 104, 105, 106]

---

## 3. Gestão de Inventário por Localização Física
[cite_start]**Cenário:** Localização de dispositivos no departamento de Marketing situados especificamente no prédio Leste (East) para auditoria física[cite: 129].

```sql
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East%';
[cite_start]``` [cite: 134, 135, 136]

[COLOQUE AQUI O PRINT DO RESULTADO DA QUERY 3]
[cite_start]*Figura 3: Inventário de ativos filtrado por localização[cite: 137, 138, 139, 140].*

---

## 🛠️ Hard Skills Demonstradas
* [cite_start]**Relacionamento de Dados:** Uso de INNER JOIN para vincular ativos a usuários[cite: 142].
* [cite_start]**Lógica Booleana:** Agrupamento de condições com OR e AND para filtros de precisão[cite: 143].
* [cite_start]**Análise de Padrões:** Uso de wildcards (%) para exclusão e inclusão de strings[cite: 144].
* [cite_start]**Compliance de TI:** Identificação proativa de máquinas fora do patch de segurança[cite: 145].
