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

##### Joins realted queries
# 1. Get the employee name and project name from the "employee table" and "ProjectDetail" for employees who have been assigned a project, sorted by first name.
 select concat(a.first_name, ' ' ,a.last_name) name, b.project_name from tbl_emp_detail_data a join tbl_project_details b
 on a.emp_id = b.emp_id_no order by a.first_name;
# 2.Get the employee name and project name from the "employee table" and "ProjectDetail" for all employees, 
                # including those who have not been assigned a project, sorted by first name.
 select concat(a.first_name,' ',a.last_name) name, b.* from tbl_emp_detail_data a join tbl_project_details b 
 on a.emp_id = b.emp_id_no order by a.first_name;
# 3. Get the employee name and project name from the "employee table" and "ProjectDetail" for all employees. 
				# If an employee has no assigned project, display "-No Project Assigned," sorted by first name.
select concat(a.first_name,' ',a.last_name) name, coalesce(b.project_name, '-No Project Assigned') project_name
 from tbl_emp_detail_data a left join tbl_project_details b 
 on a.emp_id = b.emp_id_no order by a.first_name;
# 4. Get all project names from the "ProjectDetail" table, even if they are not linked to any 
				# employee, sorted by first name from the "employee table" and "ProjectDetail" table.
select b.project_name from tbl_emp_detail_data a join tbl_project_details b
on a.emp_id = b.emp_id_no order by a.first_name;
# 5. Find the project names from the "ProjectDetail" table that have not been assigned to any employee using the "employee table" and "ProjectDetail" table.                
select b.project_name from tbl_emp_detail_data a left join tbl_project_details b 
on a.emp_id = b.emp_id_no where project_name = null ;
# 6. Get the employee name and project name for employees who are assigned to more than one project.
select concat(a.first_name,' ',a.last_name) name, b.project_name from tbl_emp_detail_data a join tbl_project_details b 
on a.emp_id = b.emp_id_no where a.emp_id in (select b.emp_id_no from tbl_project_details b group by b.emp_id_no having count(*) > 1 );
# 7.  Get the project name and the employee names of employees working on projects that have more than one employee assigned.
select b.project_name, concat(a.first_name,' ',a.last_name) name from tbl_emp_detail_data a join tbl_project_details b 
on a.emp_id = b.emp_id_no where b.project_name in (select b.project_name from tbl_project_details b group by b.project_name having count(*) > 1);
# 8. Get records from the "ProjectDetail" table where the corresponding employee ID does not exist in the "employee table."
select b.* from tbl_project_details b left join tbl_emp_detail_data a on a.emp_id = b.emp_id_no
where a.emp_id = null;

#####  Case When Then End Statement Queries
# 1. Display first_name and gender as M/F.(if male then M, if Female then F) 1.
select first_name, gender, case
when gender = 'Male' then 'M' 
else 'F'
end category from tbl_emp_detail_data;
# 2. Display first_name, salary, and a salary category. (If salary is below 50,000, categorize as 'Low'; 
		     # between 50,000 and 60,000 as 'Medium'; above 60,000 as 'High')
 select first_name, salary, case
 when salary < 50000 then 'Low'
 when salary between 50000 and 60000 then 'Medium'
 when salary > 60000 then 'High'
 end salary_category from tbl_emp_detail_data order by salary desc;
# 3. Display first_name, department, and a department classification. (If department is 'IT', display 'Technical';  
			# if 'HR', display 'Human Resources'; if 'Finance', display 'Accounting'; otherwise, display 'Other')
select first_name, department, case
when department = 'IT' then 'Technical'
when department = 'HR' then 'Human Resources'
when department = 'Finance' then 'Accounting'
else 'Other' end 'department_carification' from tbl_emp_detail_data;
# 4. Display first_name, salary, and eligibility for a salary raise. (If salary is less than 50,000, mark as 'Eligible for Raise'; otherwise, 'Not Eligible')
select first_name, salary, case
when salary < 50000 then 'Eligible for Raise'
else 'Not Eligible' end 'eligibility for a salary raise' from tbl_emp_detail_data;
# 5. Display first_name, joining_date, and employment status. (If joining date is before '2022-01-01', mark as 'Experienced'; otherwise, 'New Hire')
select first_name, joining_date, case
when joining_date < '2022-01-01' then 'Experienced'
else 'New Hire' end 'employment status' from tbl_emp_detail_data;
# 6. Display first_name, salary, and bonus amount. (If salary is above 60,000, add10% bonus; if between 50,000 and 60,000, add 7%; otherwise, 5%)
select first_name, salary, case
when salary > 60000 then salary * 0.10
when salary between 50000 and 60000 then salary * 0.7
else salary * 0.5 end 'bonus amount' from tbl_emp_detail_data;
# 7. Display first_name, salary, and seniority level.  (If salary is greater than 60,000, 
            # classify as 'Senior'; between 50,000 and 60,000 as Mid-Level'; below 50,000 as 'Junior')
select first_name, salary, case
when salary > 60000 then 'Senior'
when salary between 50000 and 60000 then 'Mid-Level'
when salary < 50000 then 'Junior'
end 'seniority level' from tbl_emp_detail_data;
# 8. Display first_name, department, and job level for IT employees. (If department is 'IT'
		    # and salary is greater than 55,000, mark as 'Senior IT Employee'; otherwise, 'Other')
select first_name, department, case
when department = 'IT' and salary > 55000 then 'senior IT employee'
else 'Other' end 'job level' from tbl_emp_detail_data;
# 9. Display first_name, joining_date, and recent joiner status. (If an employee joinedafter '2024-01-01', label as 'Recent Joiner'; otherwise, 'Long-Term Employee')
select first_name, joining_date, case
when joining_date > '2024-01-01' then 'Recent Joiner'
else 'Long-Term Employee' end 'recent joiner status' from tbl_emp_detail_data;
# 10.  Display first_name, joining_date, and leave entitlement. (If joined before '2021-01-01', assign '10 Days Leave'; 
			# between '2021-01-01' and '2023-01-01', assign '20 Days Leave'; otherwise, '25 Days Leave')
select first_name, joining_date, case
when joining_date < '2021-01-01' then '10 Days Leave'
when joining_date between '2021-01-01' and '2023-01-01' then '20 days leave'
else '25 days leave' end 'leave entitlement' from tbl_emp_detail_data;
# 11. Display first_name, salary, department, and promotion eligibility. (If salary is above 60,000 and department is 'IT', 
             # mark as 'Promotion Eligible'; otherwise, 'Not Eligible')
select first_name, salary, department, case
when salary > 60000 and department = 'IT' then 'Promotion Eligible'
else 'Not Eligible' end 'promotion eligibility' from tbl_emp_detail_data;
# 12. Display first_name, salary, and overtime pay eligibility. (If salary is below 50,000, mark as 'Eligible for Overtime Pay'; otherwise, 'Not Eligible')
select first_name, salary, case
when salary < 50000 then 'Eligible for Overtime Pay'
else 'Not Eligible' end 'overtime pay eligibility' from tbl_emp_detail_data;
# 13. Display first_name, department, salary, and job title. (If department is 'HR' and salary is above 60,000, mark as 'HR Executive'; 
              # if department is 'Finance' and salary is above 55,000, mark as 'Finance Manager'; otherwise, 'Regular Employee')
select first_name, department, salary, job_title, case
when department = 'HR' and salary > 60000 then 'HR Executive'
when department = 'Finance' and salary > 50000 then 'Finance Manager'
else 'Regular Employee' end 'category' from tbl_emp_detail_data;
# 14. Display first_name, salary, and salary comparison to the company average. (If salary is above the company’s average salary, 
		      # mark as 'Above Average'; otherwise, 'Below Average')
select first_name, salary, case
when salary > (select avg(salary) from tbl_emp_detail_data) then 'Above Average'
else 'Below Average' end 'salary comparison to the company average' from tbl_emp_detail_data
group by first_name, salary;

######  Ranking Functions
# 1. Get all project names from the "ProjectDetail" table, even if they are not linked to any employee, 
               # sorted by first name from the "employee table" and "ProjectDetail" table
select a.project_name from tbl_project_details a left join tbl_emp_detail_data b 
on a.emp_id_no = b.emp_id order by b.first_name;
             
select b.first_name, a.project_name, rank() over(order by b.first_name) as rnk_by_frst_name
from tbl_project_details a   left join tbl_emp_detail_data b
on a.emp_id_no = b.emp_id;     
 # 2. Find the project names from the "ProjectDetail" table that have not been assigned to any employee using the "employee table" and "ProjectDetail" table.
select distinct project_name from (
select a.project_name, b.emp_id, rank() over (partition by a.project_id order by b.emp_id) as emp_rank
from tbl_project_details a left join tbl_emp_detail_data b on a.emp_id_no = b.emp_id
) ranked_projects
where emp_id is null;
# 3. Get the employee name and project name for employees who are assigned to more than one project.
select concat(a.first_name,' ',a.last_name) name, b.project_name
from tbl_emp_detail_data a join tbl_project_details b on a.emp_id = b.emp_id_no
where a.emp_id in 
(select emp_id_no from tbl_project_details 
group by emp_id_no 
having count(distinct project_id) > 1)
order by name, b.project_name;
# 4. Get the project name and the employee names of employees working on projects that have more than one employee assigned.
select b.project_name, concat(a.first_name,' ',a.last_name) name
from tbl_project_details b join tbl_emp_detail_data a on b.emp_id_no = a.emp_id
where project_name in (select project_name from tbl_project_details
group by project_name
having count(distinct emp_id_no) > 1)
order by name, b.project_name;
#  5. Get records from the "ProjectDetail" table where the corresponding employee ID does not exist in the "employee table."
select a.* from tbl_project_details a left join tbl_emp_detail_data b on a.emp_id_no = b.emp_id
where b.emp_id is null;

#####  Partitioning
# 1. Assign a row number to each employee within their department based on salary in descending order.
select concat(first_name,' ',last_name) name, department, row_number() over(partition by department) row_nmbr from tbl_emp_detail_data;
# 2. Rank employees within each department based on salary using RANK()
select concat(first_name,' ',last_name) name, department, salary, rank() over(partition by department order by salary desc) rnk from tbl_emp_detail_data;
# 3. Rank employees within each department based on salary using DENSE_RANK()  
select concat(first_name,' ',last_name) name, department, salary, dense_rank() over(partition by department order by salary desc) rnk from tbl_emp_detail_data;
# 4. Find the highest-paid employee in each department using RANK()
select name, department, salary from
(select concat(first_name,' ',last_name) name, department, salary, rank() over(partition by department order by salary desc) rnk from tbl_emp_detail_data)
as ranked_emp
where rnk = 1;
# 5. Find the second highest-paid employee in each department using RANK().
select name, department, salary from 
(select concat(first_name, '', last_name)name, department, salary, rank() over(partition by department order by salary desc) rnk from tbl_emp_detail_data)
as ranked_emp
where rnk =2;
# 6. Rank employees based on their years of experience within each department.
select concat(first_name,' ', last_name) name, department, year(joining_date) years, 
rank() over(partition by department order by year(joining_date) desc) rnk from tbl_emp_detail_data;
# 7. Find the employee with the earliest join date in each department using RANK(). 
select * from
(select *, rank() over(partition by department order by joining_date) rnk from tbl_emp_detail_data) emp_rnkd
where rnk = 1;

#####  Complex Ranking Scenarios
# 1. Find the employees who earn more than the average salary of their department.
select * from
(select *, avg(salary) over(partition by department) dept_avg_sal from tbl_emp_detail_data) dept_sal
where salary > dept_avg_sal;
# 2. Rank employees within each job title in every department based on salary. 
select department, job_title, salary, rank() over (partition by job_title, department order by salary desc) rnk from tbl_emp_detail_data;
# 3. Find the top 3 highest-paid employees in each department.
select * from 
(select concat(first_name,' ',last_name) name, department, salary, rank() over(partition by department order by salary desc) rnk from tbl_emp_detail_data) sal
where rnk < 4;
# 4. Find employees who belong to the top 10% earners within their department using PERCENT_RANK().
select emp_id, department, salary from
(select emp_id, department, salary, percent_rank() over (partition by department order by salary desc) pr from tbl_emp_detail_data) as ranked
where pr <= 0.10;
# 5. Assign row numbers to employees based on their joining year using PARTITION BY YEAR(join_date).
select *, row_number() over(partition by year(joining_date) order by emp_id desc) rnk from tbl_emp_detail_data;
# 6. Rank employees based on the number of projects handled within each department.
select a.emp_id, concat(a.first_name,' ',a.last_name) name, a.department, count(b.project_id) project_count,
rank() over (partition by a.department order by count(b.project_id) desc) rank_in_dept
from tbl_emp_detail_data a
join tbl_project_details b on a.emp_id = b.emp_id_no
group by a.emp_id, concat(a.first_name,' ',a.last_name), a.department;
# 7. Find employees who are the only ones in their department (departments with only one employee).
select * from 
(select *, count(*) over(partition by department) dept_count from tbl_emp_detail_data) emp_rnk
where dept_count = 1;
# 8. Find the highest-paid employee in each job role within a department.
select * from
(select *, rank() over(partition by department, job_title order by salary desc) rnk from tbl_emp_detail_data) emp_rnk
where rnk= 1;
# 9. Find employees who have been working in the company the longest in each department.
select emp_id, name, department, joining_date from 
(select emp_id, concat(first_name,' ',last_name) name, department, joining_date,
rank() over (partition by department order by joining_date) rank_in_dept from tbl_emp_detail_data) ranked
where rank_in_dept = 1;

##### Date time related queries
# 1. Query to extract the below things from joining_date column. (Year, Month, Day, Current Date)
select *, year(joining_date) from tbl_emp_detail_data;
select *, month(joining_date) from tbl_emp_detail_data;
select *, day(joining_date) from tbl_emp_detail_data;
select *, current_date from tbl_emp_detail_data;
# 2. Create two new columns that calculate the difference between joining_date and the current date. 
           ### One column should show the difference in months, and the other should show the difference in days
select emp_id, concat(first_name,' ',last_name) name, joining_date,
timestampdiff(month, joining_date, current_date) months_diff,
datediff(current_date, joining_date) days_diff
from tbl_emp_detail_data;
# 3. Get all employee details from the employee table whose joining year is 2020.
select * from tbl_emp_detail_data where year(joining_date) = 2020;
# 4. Get all employee details from the employee table whose joining month is Feb.
select * from tbl_emp_detail_data where month(joining_date) = 2;
# 5. Get all employee details from employee table whose joining date between "2021-01-01" and "2021-12-01"
select * from tbl_emp_detail_data where joining_date between "2021-01-01" and "2021-12-01";


use assignment_1_db;
select * from tbl_emp_detail_data limit 10;
select * from tbl_project_details limit 10;
 
 
 