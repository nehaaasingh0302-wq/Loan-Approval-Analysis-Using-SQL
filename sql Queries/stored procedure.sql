DELIMITER //

CREATE PROCEDURE GetApprovedLoans()
BEGIN
    SELECT *
    FROM loan_data
    WHERE Loan_Status = 'Y';
END //

DELIMITER ;

CALL GetApprovedLoans();