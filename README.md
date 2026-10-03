# HR Attrition and Retention Analysis

## Project Overview

This project explores how recorded employee attrition varies across groups in a sample HR dataset. The analysis looks for patterns HR could investigate further; it does not establish why employees left or predict which individuals will leave.

## Business Question

How do attrition rates vary across employee groups, including overtime status, tenure, age, income band, department, and job satisfaction?

## Dataset and Preparation

The dataset contains 1,470 employee records and 35 original columns. Checks found no missing cells, and `EmployeeNumber` was unique for all 1,470 records. Python was used to add age, tenure, and income bands for group-level comparisons. The original CSV was kept unchanged.

## Tools

- Google Sheets for initial data checks and exploratory comparisons
- Python and pandas for validation and data preparation
- MySQL for querying attrition counts and rates
- Power BI for the interactive dashboard

## Key Findings

- Overall, 237 of 1,470 employees were marked as having left, an attrition rate of 16.12%.
- Attrition was 30.53% among employees who worked overtime (127 of 416), compared with 10.44% among those who did not (110 of 1,054).
- The under-25 age group had the highest age-band rate at 39.18% (38 of 97). The rate was 10.10% for employees aged 35–44 (51 of 505).
- Employees with 0–2 years at the company had a 29.82% rate (102 of 342), compared with 8.13% for employees with 11 or more years (20 of 246).
- Attrition was 28.61% in the under-3,000 monthly income band (113 of 395) and 5.64% in the 12,000+ band (11 of 195).
- The rate was 24.91% for employees who travelled frequently (69 of 277), compared with 8.00% for non-travellers (12 of 150).
- Attrition was 22.84% for JobSatisfaction level 1 (66 of 289) and 11.33% for level 4 (52 of 459).

These are descriptive differences within this dataset. Groups may overlap, and the comparisons do not show that any one factor caused employees to leave.

## Recommendations to Investigate

- Review timekeeping and payroll records to check whether recorded overtime is compensated correctly. The dataset only records overtime as Yes or No; it does not include overtime hours or overtime pay.
- Examine onboarding and early-career support for employees in their first two years. Use employee feedback and exit information to investigate possible reasons for the higher rate.
- Review compensation within comparable roles and job levels before making pay-related changes. The income bands alone do not explain the differences.
- Track attrition rates over time and assess any retention actions using follow-up employee feedback and consistent group-level measures.

## Limitations

- This is a sample dataset, not a current record of a specific employer’s workforce.
- The analysis describes group-level associations; it cannot establish causes or predict individual employee behavior.
- Some groups are small, so their rates may be less stable. For example, the under-25 group has 97 employees.
- The dataset does not include employees’ reasons for leaving, actual overtime hours, or overtime compensation.

## Project Files

- `hr_attrition_analysis.ipynb` — Python data checks, preparation, and analysis
- `data/processed/hr_attrition_analysis_ready.csv` — prepared dataset with analysis bands
- `sql/analysis.sql` — SQL queries for attrition summaries
- `data/reports/HR_Attrition_Dashboard.pbix` — editable Power BI dashboard
- `WA_Fn-UseC_-HR-Employee-Attrition.csv` — original dataset

## Dashboard Preview

[View the dashboard as a PDF](data/reports/HR_Attrition_Dashboard.pdf)

The editable Power BI report is available at `data/reports/HR_Attrition_Dashboard.pbix`.

## Dataset Source

The IBM HR Analytics Employee Attrition & Performance dataset is a fictional dataset created by IBM data scientists and distributed on Kaggle.

Source: [IBM HR Analytics Employee Attrition & Performance](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)