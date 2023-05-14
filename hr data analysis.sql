-- Gender distrubution in company
SELECT 
    gender, COUNT(gender) AS no_of_employeers
FROM
    hr
GROUP BY gender;

-- headquaters versus remote
SELECT 
    location, COUNT(location)
FROM
    hr
GROUP BY location;
use project;

-- gender distrubution among various department

SELECT 
    gender, COUNT(gender),department
FROM
    hr
GROUP BY department,gender
order by department;

SELECT 
    jobtitle, COUNT(jobtitle)
FROM
    hr
GROUP BY jobtitle
ORDER BY COUNT(jobtitle) DESC;

-- employee distrubution among different states

SELECT 
    location_state, COUNT(emp_no)
FROM
    hr
GROUP BY location_state;



