# Loan Approval Analysis Using SQL

## Project Overview
Analyzed a loan approval dataset containing 614 applications using SQL to identify factors influencing loan approval.

## Tools Used
- MySQL Workbench
- SQL

## Dataset
- 529 Records
- 13 Columns

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- HAVING
- CASE Statements
- Subqueries
- Window Functions
- Views
- Stored Procedures
- Indexes

## Key Insights
- Applicants with credit history = 1 had much higher approval rates.
- Graduate applicants had higher approval rates than non-graduates.
- Semiurban properties showed strong approval performance.
- Higher income applicants generally requested larger loans.

## Project Structure
data 
sql queries
results

#star schema 

                    +---------------+
                    | Dim_Gender    |
                    +---------------+
                           |
                           |
                           |
+---------------+   +---------------+   +---------------+
| Dim_Education |---|   Fact_Loan   |---| Dim_Property  |
+---------------+   +---------------+   +---------------+
                           |
                           |
                           |
                    +------------------+
                    | Dim_Credit_History |
                    +------------------+
results

