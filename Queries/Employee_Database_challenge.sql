-- Retirement titles csv
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Unique titles csv
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Retiring titles
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC

-- Create eligible mentorship program employees table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
					e.first_name,
					e.last_name,
					e.birth_date,
					de.from_date,
					de.to_date,
					ti.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
		ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no

-- Unique titles CURRENT EMPLOYEES csv
SELECT ut.emp_no,
		ut.first_name,
		ut.last_name,
		ut.title,
		ut.to_date
INTO unique_titles_current_emp
FROM unique_titles as ut
WHERE (ut.to_date = '9999-01-01');

-- Retiring titles CURRENT EMPLOYEES
SELECT COUNT (utch.title), utch.title
--INTO retiring_titles_current_emp
FROM unique_titles_current_emp as utch
GROUP BY utch.title
ORDER BY COUNT(utch.title) DESC

DROP TABLE unique_titles_current_emp

-- Mentorship eligiblity by dept
SELECT DISTINCT ON (me.emp_no) me.emp_no,
		me.first_name,
		me.last_name,
		de.dept_no,
		d.dept_name
INTO mentorship_eligibility_by_dept
FROM mentorship_eligibility as me
	INNER JOIN dept_emp as de
		ON (me.emp_no = de.emp_no)
	INNER JOIN departments as d
		ON (de.dept_no = d.dept_no)
		
DROP TABLE mentorship_eligibility_by_dept

-- Mentorship eligibility by dept count
SELECT COUNT (med.dept_name), med.dept_name
INTO mentorship_count
FROM mentorship_eligibility_by_dept as med
GROUP BY med.dept_name
ORDER BY COUNT(med.dept_name) DESC