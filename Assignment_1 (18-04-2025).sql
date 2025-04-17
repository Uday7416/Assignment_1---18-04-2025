#####  Database , Tables , Constraints

# 1. Create new database & employee table (based on give sample data)
create database Assignment_1_db;
use Assignment_1_db;
# create employee table with primary key (EmployeeID)
# 2.  Insert sample data into the table. 
CREATE TABLE tbl_emp_detail_data (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    salary INT CHECK (salary > 0),
    joining_date DATETIME NOT NULL,
    department VARCHAR(50) CHECK (department IN ('IT', 'HR', 'Finance', 'Operations', 'Marketing')),
    gender ENUM('Male', 'Female') NOT NULL,
    job_title VARCHAR(100)
);
INSERT INTO tbl_emp_detail_data VALUES 
(101, 'Malli', 'G', 50000, '2020-09-20 11:16', 'IT', 'Male', 'Software Engineer'),
(102, 'Venu', 'S', 55000, '2024-10-05 07:15', 'IT', 'Male', 'Software Engineer'),
(103, 'Anjali', 'R', 62000, '2024-08-15 09:45', 'HR', 'Female', 'HR Manager'),
(104, 'Rajesh', 'K', 48000, '2023-07-10 14:10', 'Finance', 'Male', 'Financial Analyst'),
(105, 'Priya', 'M', 53000, '2024-06-25 18:30', 'IT', 'Female', 'Software Engineer'),
(106, 'Arjun', 'B', 67000, '2024-09-05 12:25', 'Operations', 'Male', 'Unknown'),
(107, 'Sneha', 'T', 60000, '2024-05-19 08:20', 'Marketing', 'Female', 'Marketing Executive'),
(108, 'Vikram', 'P', 58000, '2024-04-30 17:55', 'IT', 'Male', 'Software Engineer'),
(109, 'Kavita', 'L', 50000, '2023-03-15 11:05', 'HR', 'Female', 'HR Manager'),
(110, 'Suresh', 'N', 62000, '2024-02-28 15:40', 'Finance', 'Male', 'Financial Analyst'),
(111, 'Suresh', 'N', 62000, '2024-02-28 15:40', 'Finance', 'Male', 'Financial Analyst'),
(112, 'Deepak', 'J', 65000, '2022-09-22 16:30', 'Operations', 'Male', 'Unknown'),
(113, 'Roshni', 'D', 52000, '2022-11-12 10:12', 'IT', 'Female', 'Software Engineer'),
(114, 'Sameer', 'C', 70000, '2024-10-18 13:45', 'Marketing', 'Male', 'Marketing Executive'),
(115, 'Pooja', 'V', 56000, '2024-07-07 19:10', 'HR', 'Female', 'HR Manager'),
(116, 'Harish', 'S', 48000, '2024-06-02 06:35', 'Finance', 'Male', 'Financial Analyst'),
(117, 'Asha', 'Y', 51000, '2024-01-25 14:22', 'IT', 'Female', 'Software Engineer'),
(118, 'Kiran', 'Z', 62000, '2021-04-18 18:55', 'Operations', 'Male', 'Unknown'),
(119, 'Divya', 'M', 58000, '2024-03-29 08:11', 'Marketing', 'Female', 'Marketing Executive'),
(120, 'Divya', 'M', 58000, '2024-03-29 08:11', 'Marketing', 'Female', 'Marketing Executive'),
(121, 'Sunil', 'B', 60000, '2022-02-17 12:47', 'HR', 'Male', 'HR Manager'),
(122, 'Meena', 'A', 49000, '2020-01-05 16:25', 'IT', 'Female', 'Software Engineer');
# 3. Write a query to create a clone of an existing table using Create Command.
# 4. Write a query to get all employee detail from "employee" table
select * from tbl_emp_detail_data;
# 5. Select only top 1 record from employee table
select * from tbl_emp_detail_data limit 1;
# 6. Select only bottom 1 record from employee table
select * from tbl_emp_detail_data order by salary asc limit 1;
# 7. How to select a random record from a table?
select * from tbl_emp_detail_data order by rand() limit 1;
# 8. Write a query to get
 # “first_name” in upper case as "first_name_upper"
 select upper(first_name) 'first_name_upper' from tbl_emp_detail_data;
 # ‘first_name’ in lower case as ‘first_name_lower”
 select lower(first_name) 'first_name_lower' from tbl_emp_detail_data;
 # Create a new column “full_name” by combining “first_name” & “last_name” with space as a separator.
 select first_name, last_name, concat(first_name,' ',last_name) full_name from tbl_emp_detail_data;
 # Add 'Hello ' to first_name and display result.
 select first_name, concat('hello',' ',first_name) from tbl_emp_detail_data;
# 9. Select the employee details of
 # Whose “first_name” is ‘Malli’
 select * from tbl_emp_detail_data where first_name = 'Malli';
 # Whose “first_name” present in ("Malli","Meena", "Anjali")
 select * from tbl_emp_detail_data where first_name in ("Malli","Meena", "Anjali");
 # Whose “first_name” not present in ("Malli","Meena", "Anjali")
 select * from tbl_emp_detail_data where first_name not in ("Malli","Meena", "Anjali");
 # Whose “first_name” starts with “v”
 select * from tbl_emp_detail_data where first_name like 'v%';
 # Whose “first_name” ends with “i”
 select * from tbl_emp_detail_data where first_name like '%i';
 # Whose “first_name” contains “o”
 select * from tbl_emp_detail_data where first_name like '%o%';
 # Whose "first_name" start with any single character between 'm-v'
 select * from tbl_emp_detail_data where first_name regexp '^[m-vM-V]';
 # Whose "first_name" not start with any single character between 'm-v'
 select * from tbl_emp_detail_data where first_name regexp '^[^m-vM-V]';
 # Whose "first_name" start with 'M' and contain 5 letters
 select * from tbl_emp_detail_data where first_name like 'M_____';
# 10. Write a query to get all unique values of"department" from the employee table
 select distinct department from tbl_emp_detail_data;
# 11. Query to check the total records present in a table.
select count(*) 'total_records' from tbl_emp_detail_data;
# 12. Write down the query to print first letter of a Name in Upper Case and all other letter in Lower Case.(EmployDetail table)
select first_name, concat(upper(left(first_name, 1)), lower(substring(first_name, 2))) as formatted_name from tbl_emp_detail_data;
# 13. Write down the query to display all employee name in one cell separated by ',' ex:-"Vikas, nikita, Ashish, Nikhil , anish"(EmployDetail table).
select group_concat(first_name separator ', ') as all_employee_names from tbl_emp_detail_data;
# 14. Query to get the below values of "salary" from employee table
 # Lowest salary
 select min(salary) 'Lowest_salary' from tbl_emp_detail_data;
 # Highest salary
 select max(salary) 'Highest_salary' from tbl_emp_detail_data;
 # Average salary
 select avg(salary) 'Average_salary' from tbl_emp_detail_data;
 # Highest salary - Lowest salary as diff_salary
 select max(salary) - min(salary) 'diff_salary' from tbl_emp_detail_data;
 # % of difference between Highest salary and lowest salary. (sample output format: 10.5%)
 select concat(round((max(salary) - min(salary)) / min(salary) * 100, 2), '%') as salary_difference_percentage from tbl_emp_detail_data;
 select first_name from tbl_emp_detail_data;
# 15. Select “first_name” from the employee table after removing white spaces from
 # Right side spaces
 select rtrim(first_name) right_trimmed from tbl_emp_detail_data;
 # Left side spaces
 select ltrim(first_name) left_trimmed from tbl_emp_detail_data;
 # Both right & left side spaces
 select trim(first_name) fully_trimmed from tbl_emp_detail_data;
# 16. Query to check no.of records present in a table where employees having 50k salary.
 select count(*) no_of_employees from tbl_emp_detail_data where salary = 50000;
# 17. Find the most recently hired employee in each department.
select department, max(joining_date) joining_date from tbl_emp_detail_data group by department;

##### Group by
# 1. Write the query to get the department and department wise total(sum) salary, display it in ascending and descending order according to salary. 
 select department, sum(salary) total_salary from tbl_emp_detail_data group by department order by total_salary asc;
 select department, sum(salary) total_salary from tbl_emp_detail_data group by department order by total_salary desc;
# 2. Write down the query to fetch Project name assign to more than one Employee 
 select job_title, count(emp_id) no_of_employees from tbl_emp_detail_data group by job_title having no_of_employees > 1 order by no_of_employees;
# 3. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "employee table" table. 
 select department, count(department) no_of_departments, sum(salary) total_salary from tbl_emp_detail_data group by department;
# 4. get the department-wise salary details from the "employee table" table:
select department, sum(salary) total_salary from tbl_emp_detail_data group by department order by total_salary desc;
 # What is the average salary? (Order by salary ascending)
select department, round(avg(salary), 1) avg_salary from tbl_emp_detail_data group by department order by avg_salary;
 # What is the maximum salary? (Order by salary ascending)
select department, max(salary) max_salary from tbl_emp_detail_data group by department order by max_salary;
# 5. Display department-wise employee count and categorize based on size. (If a department
         # has more than 5 employees, label it as 'Large'; between 3 and 5 as 'Medium'; otherwise, 'Small')
select department, count(*) no_of_employees, case 
when count(*)  > 5 then 'Large'
when count(*)  between 3 and 5 then 'Medium'
else 'Small' 
end as emp_category from tbl_emp_detail_data group by department order by count(*) desc;
# 6. Display department-wise average salary and classify pay levels. (If the average salary in a
        # department is above 60,000, label it as 'High Pay'; between 50,000 and 60,000 as 'Medium Pay'; otherwise, 'Low Pay').
select department, round(avg(salary),2) avg_salary, case
when avg(salary) > 60000 then 'High_pay'
when avg(salary) between 50000 and 60000 then 'Medium_pay'
else 'Low_pay'
end sal_category from tbl_emp_detail_data group by department order by avg(salary) desc;
# 7. Display department, gender, and count of employees in each category. (Group by department and gender, showing total employees in each combination)
select department, gender, count(emp_id) no_of_employees from tbl_emp_detail_data group by department, gender order by no_of_employees desc;
# 8. Display the number of employees who joined each year and categorize hiring trends. 
           # (If a year had more than 5 hires, mark as 'High Hiring'; 3 to 5 as 'Moderate Hiring'; otherwise, 'Low Hiring')
select year(joining_date) year, count(emp_id) no_of_employees, case
when count(emp_id) > 5 then 'High_Hiring'
when count(emp_id) between 3 and 5 then 'Moderate_Hiring'
else 'Low_Hiring'
end Hiring_category from tbl_emp_detail_data group by year(joining_date) order by year desc;
# 9. Display department-wise highest salary and classify senior roles. (If the highest salary in a department is above 70,000, label as 'Senior Leadership'; otherwise, 'Mid-Level')
select department, sum(salary) total_salary, case
when sum(salary) > 70000 then 'Senior Leadership'
else 'Mid-Level'
end role_category from tbl_emp_detail_data group by department order by total_salary desc;
# 10. Display department-wise count of employees earning more than 60,000. 
           # (Group employees by department and count those earning above 60,000, labeling departments with more than 2 such employees as 'High-Paying Team')
select department, sum(salary) total_salary, count(*) no_of_employees, case 
when count(*) > 2 then 'high_paying_team'
else 'normal_team'
end team_category
from tbl_emp_detail_data group by department having total_salary > 60000;








  select * from tbl_emp_detail_data;

 
 
 
 