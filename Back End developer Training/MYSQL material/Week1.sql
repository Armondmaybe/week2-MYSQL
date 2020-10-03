SELECT * FROM employees WHERE birth_date<'1965-01-1';

SELECT* FROM employees WHERE gender='f' AND hire_date>'1990-12-31';

SELECT first_name,last_name FROM employees WHERE last_name LIKE 'F%' LIMIT 50;

INSERT INTO employees VALUES('100','1998-06-12','Michael','Jackson','M','2000-12-06'),
('101','2000-04-25','Nikki','Darling','F','2020-01-22'),
('102','1991-04-08','Larry','June','M','2020-01-22');


UPDATE employees SET first_name='Bob' WHERE emp_no='10023';
SELECT* FROM employees WHERE emp_no='10023';

SELECT* FROM employees WHERE first_name LIKE 'P%'AND last_name LIKE'P%' ;
UPDATE  employees SET hire_date='2002-01-01' WHERE first_name LIKE 'P%' AND last_name LIKE 'P%';

SELECT * FROM employeeS WHERE emp_no<10000;
DELETE FROM  employees WHERE emp_no<10000; 

SELECT * FROM employees WHERE (emp_no)IN (('10048'), ('10099'), ('10234'), ('20089'));
DELETE FROM employees WHERE (emp_no) IN (('10048'), ('10099'), ('10234'), ('20089'));



