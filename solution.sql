-- Question 20:
-- Create a trigger that automatically displays a message
-- after inserting a new employee record into the Employee table.

SET SERVEROUTPUT ON;

CREATE TABLE Employee (
    EmployeeID NUMBER(5) PRIMARY KEY,
    EmployeeName VARCHAR2(20) NOT NULL,
    Department VARCHAR2(20),
    Salary NUMBER(10,2)
);

CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee record inserted successfully.'
    );
END;
/

INSERT INTO Employee
(
    EmployeeID,
    EmployeeName,
    Department,
    Salary
)
VALUES
(
    101,
    'Ravi',
    'HR',
    25000
);

COMMIT;
