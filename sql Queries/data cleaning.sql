
SELECT *
FROM loan_data
WHERE Gender IS NULL
OR Married IS NULL
OR Dependents IS NULL
OR LoanAmount IS NULL;

SELECT DISTINCT Education
FROM loan_data;

SELECT DISTINCT Property_Area
FROM loan_data;

SELECT DISTINCT Loan_Status
FROM loan_data;

SELECT COUNT(*)
FROM loan_data
WHERE LoanAmount IS NULL;

