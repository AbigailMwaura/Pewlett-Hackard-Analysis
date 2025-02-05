--Deliverable 2

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)    
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)  
WHERE (de.to_date BETWEEN '9999-01-01' AND '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no, e.emp_no DESC;