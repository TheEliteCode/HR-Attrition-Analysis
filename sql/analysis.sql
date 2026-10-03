-- SQLBook: Code
CREATE DATABASE IF NOT EXISTS hr_attrition;
USE hr_attrition

SELECT COUNT(*) AS row_count
FROM hr_attrition.employee_attrition;

SELECT *
FROM hr_attrition.employee_attrition
LIMIT 5;

SELECT
    OverTime,
    COUNT(*) AS employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(100.0 * SUM(Attrition = 'Yes') / COUNT(*), 2) AS attrition_rate_pct
FROM hr_attrition.employee_attrition
GROUP BY OverTime;


SELECT
    TenureBand,
    COUNT(*) AS employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(100.0 * SUM(Attrition = 'Yes') / COUNT(*), 2) AS attrition_rate_pct
FROM hr_attrition.employee_attrition
GROUP BY TenureBand
ORDER BY
    CASE TenureBand
        WHEN '0–2 years' THEN 1
        WHEN '3–5 years' THEN 2
        WHEN '6–10 years' THEN 3
        WHEN '11+ years' THEN 4
    END;


