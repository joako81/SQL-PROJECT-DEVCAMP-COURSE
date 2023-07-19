-- nota media profesores
SELECT 
t.teachers_id, t.teachers_name,
AVG(g.grades_value) AS nota_media
FROM teachers t
JOIN grades g 
ON t.teachers_id = g.grades_teachers_id
GROUP BY t.teachers_id, t.teachers_name
ORDER BY nota_media ASC;

-- nota máxima alumno

SELECT s.students_id, s.students_name, g.grades_value AS mejor_nota
FROM students s
JOIN grades g ON s.students_id = g.grades_students_id
WHERE g.grades_value = (
  SELECT MAX(grades_value)
  FROM grades
  WHERE grades_students_id = s.students_id
)
GROUP BY s.students_id, s.students_name
ORDER BY s.students_name ASC;

-- cursos apuntado cada alumno

SELECT s.students_id, s.students_name, COUNT(g.grades_students_id) AS number_courses
FROM students s
LEFT JOIN grades g 
ON g.grades_students_id = s.students_id
GROUP BY s.students_id
ORDER BY number_courses ASC;


-- ORDEN CURSO MÁS DESAFIANTE

SELECT c.courses_name, AVG(g.grades_value) AS average_grade
FROM courses c
RIGHT JOIN grades g
ON c.courses_id = g.grades_courses_id
GROUP BY c.courses_name
ORDER BY average_grade ASC;


-- MÁS CURSOS EN COMÚN

SELECT
    s.students_name AS student_name,
    t.teachers_name AS teacher_name,
    COUNT(*) AS common_courses
FROM
    grades g
JOIN
    students s ON g.grades_students_id = s.students_id
JOIN
    teachers t ON g.grades_teachers_id = t.teachers_id
GROUP BY
    s.students_id, t.teachers_id
ORDER BY
    common_courses DESC
LIMIT 5;


