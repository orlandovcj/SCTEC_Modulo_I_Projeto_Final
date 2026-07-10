SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_id,
    d.department_name,
    l.location_id,
    l.city,
    l.state_province,
    c.country_id,
    c.country_name,
    r.region_id,
    r.region_name
FROM HR.EMPLOYEES e
LEFT JOIN HR.DEPARTMENTS d
    ON e.department_id = d.department_id
LEFT JOIN HR.LOCATIONS l
    ON d.location_id = l.location_id
LEFT JOIN HR.COUNTRIES c
    ON l.country_id = c.country_id
LEFT JOIN HR.REGIONS r
    ON c.region_id = r.region_id
WHERE r.region_name IS NOT NULL
ORDER BY
    r.region_name,
    c.country_name,
    l.city,
    d.department_name,
    e.salary DESC;