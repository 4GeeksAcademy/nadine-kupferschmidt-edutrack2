# EduTrack v2 — Informe de análisis

## Q1 - Todas las inscripciones (INNER JOIN)

Resultado: 16 inscripciones

| Estudiante      | Curso                  | Completado |
| --------------- | ---------------------- | ---------- |
| Emily Watson    | Intro to Python        | 85%        |
| Emily Watson    | Web Design Basics      | 60%        |
| Klaus Weber     | Intro to Python        | 92%        |
| Klaus Weber     | Data Analysis with SQL | 78%        |
| Lucia Fernandes | Web Design Basics      | 5%         |
| Lucia Fernandes | Digital Marketing 101  | 3%         |
| Marco Rossi     | Advanced Python        | 95%        |
| Marco Rossi     | Intro to Python        | 88%        |
| Yuki Nakamura   | Data Analysis with SQL | 45%        |
| Yuki Nakamura   | UI/UX Fundamentals     | 0%         |
| Pierre Dubois   | UI/UX Fundamentals     | 0%         |
| Priya Sharma    | Digital Marketing 101  | 70%        |
| Priya Sharma    | Intro to Python        | 55%        |
| Pierre Dubois   | Data Analysis with SQL | 20%        |
| Emily Watson    | Advanced Python        | 40%        |
| Lucia Fernandes | Advanced Python        | 0%         |

## Q2 - Estudiantes que aprobaron al menos un curso

Resultado: 6 filas

| Nombre       | Email                             | Curso aprobado         |
| ------------ | --------------------------------- | ---------------------- |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |

## Q4 - Estudiantes sin ninguna inscripción (LEFT JOIN)

Resultado: 1 estudiante

| Nombre        | Email                              |
| ------------- | ---------------------------------- |
| Giulia Romano | giulia.romano@student.edutrack.com |

## Q5 - Cursos sin ninguna inscripción (LEFT JOIN)

Resultado: 1 curso

| Curso           | Instructor   |
| --------------- | ------------ |
| Email Campaigns | Lucia Prades |

## Q6 - Estudiantes inscritos en más de un curso

Resultado: 7 estudiantes

| Estudiante      | Cantidad de cursos |
| --------------- | ------------------ |
| Emily Watson    | 3                  |
| Lucia Fernandes | 3                  |
| Priya Sharma    | 2                  |
| Pierre Dubois   | 2                  |
| Klaus Weber     | 2                  |
| Yuki Nakamura   | 2                  |
| Marco Rossi     | 2                  |

## Q7 - Ingresos totales por categoría (precio actual del curso)

Resultado (de mayor a menor):

| Categoría   | Ingresos totales |
| ----------- | ---------------- |
| Programming | $409.93          |
| Data        | $179.97          |
| Design      | $169.96          |
| Marketing   | $59.98           |

## Q8 - Estudiantes inscritos por instructor

Resultado: 4 instructores

| Instructor         | Estudiantes inscritos |
| ------------------ | --------------------- |
| Marta López        | 7                     |
| Carlos Vega        | 5                     |
| Pending assignment | 2                     |
| Lucia Prades       | 2                     |

## Q9 - Inscripciones con student_id huérfano

Resultado: 0 filas

Todas las inscripciones apuntan a un estudiante que existe en la tabla `students`. La integridad de los datos se cumple.

## Q10 - Inscripciones con course_id huérfano

Resultado: 0 filas

Todas las inscripciones apuntan a un curso que existe en la tabla `courses`. La integridad de los datos se cumple.

