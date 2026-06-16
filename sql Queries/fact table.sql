CREATE TABLE Dim_Gender (
    Gender_ID INT PRIMARY KEY,
    Gender VARCHAR(10)
);

CREATE TABLE Dim_Education (
    Education_ID INT PRIMARY KEY,
    Education VARCHAR(20)
);

CREATE TABLE Dim_Property (
    Property_ID INT PRIMARY KEY,
    Property_Area VARCHAR(20)
);

CREATE TABLE Dim_Credit_History (
    Credit_ID INT PRIMARY KEY,
    Credit_History DECIMAL(3,1)
);

CREATE TABLE Fact_Loan (
    Loan_ID VARCHAR(20),
    Gender_ID INT,
    Education_ID INT,
    Property_ID INT,
    Credit_ID INT,
    ApplicantIncome INT,
    CoapplicantIncome DECIMAL(10,2),
    LoanAmount DECIMAL(10,2),
    Loan_Status VARCHAR(5)
);