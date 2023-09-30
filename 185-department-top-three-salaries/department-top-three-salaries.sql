SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM (
    SELECT 
        e1.name,
        e1.salary,
        e1.departmentId,
        COUNT(DISTINCT e2.salary) AS salary_rank
    FROM employee AS e1
    LEFT JOIN employee AS e2
    ON e1.salary <= e2.salary AND e1.departmentId = e2.departmentId
    GROUP BY e1.name, e1.salary, e1.departmentId
) AS e
JOIN Department AS d ON e.departmentId = d.id
WHERE e.salary_rank <= 3
ORDER BY d.name, e.salary DESC;
