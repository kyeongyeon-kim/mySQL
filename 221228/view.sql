SELECT A.FIRST_NAME, A.LAST_NAME,B.DEPARTMENT_NAME,C.CITY, D.COUNTRY_NAME 
FROM employees AS A
LEFT OUTER JOIN departments AS B ON A.DEPARTMENT_ID = B.DEPARTMENT_ID
LEFT OUTER JOIN locations AS C ON B.LOCATION_ID = C.LOCATION_ID
LEFT OUTER JOIN countries AS D ON C.COUNTRY_ID = D.COUNTRY_ID;