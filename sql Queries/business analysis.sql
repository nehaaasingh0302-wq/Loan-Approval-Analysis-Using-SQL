SELECT Education,
ROUND(AVG(ApplicantIncome),2) AS Avg_Income
FROM loan_data
GROUP BY Education;

SELECT Property_Area,
ROUND(AVG(LoanAmount),2) AS Avg_Loan
FROM loan_data
GROUP BY Property_Area;

SELECT Gender,
ROUND(
COUNT(CASE WHEN Loan_Status='Y' THEN 1 END)
*100.0/COUNT(*),2
) AS Approval_Rate
FROM loan_data
GROUP BY Gender;

SELECT Education,
ROUND(
COUNT(CASE WHEN Loan_Status='Y' THEN 1 END)
*100.0/COUNT(*),2
) AS Approval_Rate
FROM loan_data
GROUP BY Education;

SELECT Credit_History,
Loan_Status,
COUNT(*) AS Total
FROM loan_data
GROUP BY Credit_History, Loan_Status;