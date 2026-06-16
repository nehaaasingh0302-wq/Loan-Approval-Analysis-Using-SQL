CREATE VIEW approved_loans AS
SELECT *
FROM loan_data
WHERE Loan_Status='Y';

CREATE VIEW rejected_loans AS
SELECT *
FROM loan_data
WHERE Loan_Status='N';

CREATE VIEW loan_summary AS
SELECT
    Property_Area,
    COUNT(*) AS Total_Applications,
    ROUND(AVG(LoanAmount),2) AS Avg_Loan,
    ROUND(AVG(ApplicantIncome),2) AS Avg_Income
FROM loan_data
GROUP BY Property_Area;