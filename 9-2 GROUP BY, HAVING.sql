SELECT * from students;


SELECT country, COUNT(*), AVG(age) FROM students
  GROUP BY country;



-- Filter Groups Using HAVING to Show Only Countries with Average Age Above 21
SELECT country, AVG(age) FROM students
  GROUP BY country
    HAVING AVG(age) > 21;



-- Count Students Born in Each Year
SELECT EXTRACT(YEAR FROM dob) AS birth_year, COUNT(*) FROM students
  GROUP BY birth_year;