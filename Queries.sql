'''Task 1'''
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, salary
FROM "Salaries"
JOIN "Employees" ON "Salaries".emp_no = "Employees".emp_no;

'''Task 2'''
SELECT last_name, first_name, hire_date FROM "Employees"
WHERE hire_date LIKE '%/1986%';

'''Task 3'''
SELECT "Dept_Manager".dept_no, "Departments".dept_name, "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Dept_Manager"
LEFT JOIN "Employees" 
ON "Dept_Manager".emp_no = "Employees".emp_no
LEFT JOIN "Departments" 
ON "Departments".dept_no = "Dept_Manager".dept_no;

'''Task 4'''
SELECT "Dept_EMP".dept_no, "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_EMP"
LEFT JOIN "Employees" 
ON "Dept_EMP".emp_no = "Employees".emp_no
LEFT JOIN "Departments" 
ON "Departments".dept_no = "Dept_EMP".dept_no;

'''Task 5'''
SELECT first_name, last_name, sex FROM "Employees"
WHERE first_name LIKE '%Hercules%' AND last_name LIKE 'B%';

'''Task 6'''
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Dept_EMP"
LEFT JOIN "Employees" 
ON "Dept_EMP".emp_no = "Employees".emp_no
LEFT JOIN "Departments" 
ON "Departments".dept_no = "Dept_EMP".dept_no
WHERE "Departments".dept_name LIKE '%Sales%';

'''Task 7'''
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_EMP"
LEFT JOIN "Employees" 
ON "Dept_EMP".emp_no = "Employees".emp_no
LEFT JOIN "Departments" 
ON "Departments".dept_no = "Dept_EMP".dept_no
WHERE "Departments".dept_name LIKE '%Sales%' OR "Departments".dept_name LIKE '%Development%';

'''Task 8'''
SELECT "Employees".last_name, COUNT("Employees".last_name) as Frequency 
FROM "Employees" 
GROUP BY "Employees".last_name
ORDER BY Frequency DESC;