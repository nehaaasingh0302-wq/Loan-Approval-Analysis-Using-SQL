SELECT COUNT(*) AS Total_Applicants
FROM loan_data;

SELECT Loan_Status,
COUNT(*) AS Applicants
FROM loan_data
GROUP BY Loan_Status;

SELECT Gender,
COUNT(*) AS Applicants
FROM loan_data
GROUP BY Gender;

SELECT Education,
COUNT(*) AS Applicants
FROM loan_data
GROUP BY Education;

SELECT Property_Area,
COUNT(*) AS Applicants
FROM loan_data
GROUP BY Property_Area;

SELECT
COUNT(*) AS Total_Applications,
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END) AS Approved,
SUM(CASE WHEN Loan_Status='N' THEN 1 ELSE 0 END) AS Rejected
FROM loan_data;

SELECT
Property_Area,
ROUND(
100.0 * SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END)
/
COUNT(*),2
) AS Approval_Rate
FROM loan_data
GROUP BY Property_Area;

SELECT
Loan_ID,
Credit_History,
CASE
WHEN Credit_History = 1 THEN 'Low Risk'
ELSE 'High Risk'
END AS Risk_Category
FROM loan_data;

DELIMITER //

CREATE PROCEDURE GetApprovedLoans()
BEGIN
    SELECT *
    FROM loan_data
    WHERE Loan_Status='Y';
END //

DELIMITER ;

CALL GetApprovedLoans();

CREATE INDEX idx_loan_status
ON loan_data(Loan_Status);

CREATE VIEW loan_summary AS
SELECT
Property_Area,
COUNT(*) AS Total_Applications,
AVG(LoanAmount) AS Avg_Loan,
AVG(ApplicantIncome) AS Avg_Income
FROM loan_data
GROUP BY Property_Area;