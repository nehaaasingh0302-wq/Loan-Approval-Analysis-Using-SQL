SELECT Loan_ID,
ApplicantIncome
FROM loan_data
ORDER BY ApplicantIncome DESC
LIMIT 10;

SELECT *
FROM loan_data
WHERE ApplicantIncome >
(
SELECT AVG(ApplicantIncome)
FROM loan_data
);

SELECT Loan_ID,
ApplicantIncome,
CASE
WHEN ApplicantIncome > 10000 THEN 'High Income'
WHEN ApplicantIncome > 5000 THEN 'Medium Income'
ELSE 'Low Income'
END AS Income_Category
FROM loan_data;

SELECT Loan_ID,
ApplicantIncome,
RANK() OVER
(
ORDER BY ApplicantIncome DESC
) AS Income_Rank
FROM loan_data;

SELECT
    Credit_History,
    Loan_Status,
    COUNT(*) AS Total
FROM loan_data
GROUP BY Credit_History, Loan_Status;