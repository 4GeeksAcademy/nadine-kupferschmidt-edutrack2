-- Q1: Todas las inscripciones con nombre del estudiante, curso y porcentaje (INNER JOIN)
SELECT students.name, courses.title, enrollments.completion_percentage
FROM enrollments
INNER JOIN students ON students.id = enrollments.student_id
INNER JOIN courses ON courses.id = enrollments.course_id;

-- Q2: Estudiantes que aprobaron al menos un curso (INNER JOIN)
SELECT students.name, students.email, courses.title
FROM enrollments
INNER JOIN students ON students.id = enrollments.student_id
INNER JOIN courses ON courses.id = enrollments.course_id
WHERE enrollments.passed = TRUE;

-- Q3: Promedio de completado por instructor, de mayor a menor (INNER JOIN + GROUP BY)
SELECT courses.instructor_name, AVG(enrollments.completion_percentage) AS avg_completion
FROM enrollments
INNER JOIN courses ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY avg_completion DESC;

-- Q4: Estudiantes sin ninguna inscripción (LEFT JOIN)
SELECT students.name, students.email
FROM students
LEFT JOIN enrollments ON enrollments.student_id = students.id
WHERE enrollments.id IS NULL;

-- Q5: Cursos sin ninguna inscripción (LEFT JOIN)
SELECT courses.title, courses.instructor_name
FROM courses
LEFT JOIN enrollments ON enrollments.course_id = courses.id
WHERE enrollments.id IS NULL;

-- Q6: Estudiantes inscritos en más de un curso (INNER JOIN + GROUP BY + HAVING)
SELECT students.name, COUNT(enrollments.id) AS course_count
FROM enrollments
INNER JOIN students ON students.id = enrollments.student_id
GROUP BY students.name
HAVING COUNT(enrollments.id) > 1
ORDER BY course_count DESC;

-- Q7: Ingresos totales por categoría usando el precio actual del curso (courses.monthly_fee)
SELECT courses.category, SUM(courses.monthly_fee) AS total_revenue
FROM enrollments
INNER JOIN courses ON courses.id = enrollments.course_id
GROUP BY courses.category
ORDER BY total_revenue DESC;

-- Q8: Cantidad de estudiantes inscritos por instructor (INNER JOIN + GROUP BY)
SELECT courses.instructor_name, COUNT(enrollments.id) AS student_count
FROM enrollments
INNER JOIN courses ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY student_count DESC;

-- Q9: Integridad - inscripciones con student_id que no existe en students (LEFT JOIN)
SELECT enrollments.id, enrollments.student_id
FROM enrollments
LEFT JOIN students ON students.id = enrollments.student_id
WHERE students.id IS NULL;

-- Q10: Integridad - inscripciones con course_id que no existe en courses (LEFT JOIN)
SELECT enrollments.id, enrollments.course_id
FROM enrollments
LEFT JOIN courses ON courses.id = enrollments.course_id
WHERE courses.id IS NULL;