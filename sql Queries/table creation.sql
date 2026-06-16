CREATE DATABASE loan_project;
USE loan_project;
CREATE TABLE loan_data (
    Loan_ID VARCHAR(20),
    Gender VARCHAR(20),
    Married VARCHAR(20),
    Dependents VARCHAR(10),
    Education VARCHAR(30),
    Self_Employed VARCHAR(20),
    ApplicantIncome INT,
    CoapplicantIncome DECIMAL(10,2),
    LoanAmount DECIMAL(10,2),
    Loan_Amount_Term DECIMAL(10,2),
    Credit_History DECIMAL(3,1),
    Property_Area VARCHAR(20),
    Loan_Status VARCHAR(5)
);

DESCRIBE loan_data;

SELECT COUNT(*)
FROM loan_data;

SELECT *
FROM loan_data
LIMIT 5;

TRUNCATE TABLE loan_data;