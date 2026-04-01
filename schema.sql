-- Department Table
CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

-- Employee Table
CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    dept_id NUMBER,
    salary NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id)
);

-- Insert Data
INSERT INTO Department VALUES (1, 'HR');
INSERT INTO Department VALUES (2, 'IT');
INSERT INTO Department VALUES (3, 'Finance');

INSERT INTO Employee VALUES (101, 'Abi', 2, 50000);
INSERT INTO Employee VALUES (102, 'John', 1, 40000);
INSERT INTO Employee VALUES (103, 'David', 2, 60000);
INSERT INTO Employee VALUES (104, 'Sara', 3, 45000);
INSERT INTO Employee VALUES (105, 'Mike', 1, 38000);