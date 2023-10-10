-- Create titles table
create table titles (
	title_id varchar (30) not null,
	title varchar (30) not null,
	primary key (title_id)
);

select * from titles;

-- Create departments table
create table departments (
	dept_no varchar (30) not null,
	dept_name varchar (100) not null,
	primary key (dept_no)
);

select * from departments;

-- Create employees table
create table employees (
	emp_no int not null,
	emp_title_id varchar (30) not null,
	birth_date date not null,
	first_name varchar (50) not null,
	last_name varchar (50) not null,
	sex varchar (30) not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

select * from employees;

-- Create dept_emp talbe
create table dept_emp (
	emp_no int not null,
	dept_no varchar (30) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments (dept_no)
);

select * from dept_emp;

-- Create dept_manager table
create table dept_manager (
	dept_no varchar (30) not null,
	emp_no int not null,
	primary key (dept_no,emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

select * from dept_manager;

-- Create salaries table
create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);

select * from salaries;

