CREATE VIEW loan_summary AS
SELECT
    Property_Area,
    COUNT(*) AS Total_Applications,
    ROUND(AVG(LoanAmount),2) AS Avg_Loan,
    ROUND(AVG(ApplicantIncome),2) AS Avg_Income
FROM loan_data
GROUP BY Property_Area;