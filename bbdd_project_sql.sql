USE bbdd_newacademy;
INSERT INTO students(students_name)
VALUES 
  ("Phyllis Harvey"),
  ("Yetta Cannon"),
  ("Cody Bernard"),
  ("Ashton Hayden"),
  ("Quintessa Mueller"),
  ("Fredericka Britt"),
  ("Ima Patrick"),
  ("Duncan Hays"),
  ("Breanna Gonzales"),
  ("Nina Sweeney"),
  ("Allistair Rush"),
  ("Cameron Cannon"),
  ("Abel Mcdaniel"),
  ("Mari Hughes"),
  ("Angelica Stafford"),
  ("Dorian Sharp"),
  ("Cameran Larson"),
  ("Chester Burgess"),
  ("Hall Mcbride"),
  ("Abra Cline");
  
  
  USE bbdd_newacademy;
INSERT INTO teachers(teachers_name)
VALUES 

  ("Nolan Guthrie"),
  ("Richard Bowers"),
  ("Jada Park"),
  ("Quemby Stark"),
  ("Virginia Miranda"),
  ("Hakeem Lucas"),
  ("Lunea Carver"),
  ("Nichole Morin"),
  ("Sydney Kidd"),
  ("Maggy Meadows");
  
USE bbdd_newacademy;
INSERT INTO courses(courses_name)
VALUES 
 ("Full Stack"),
 ("Coding Foundations"),
 ("Movile Development with React Native "),
 ("Machine Learning"),
 ("Python Coding");  
  
USE bbdd_newacademy;
INSERT INTO grades(grades_value, grades_courses_id, grades_teachers_id,grades_students_id)
VALUES 
(7,1,1,1),
(7,2,2,2),
(9,3,3,3),
(8,4,4,4),
(9,5,5,5),
(9,1,6,6),
(7,2,7,7),
(8,3,8,8),
(9,4,9,9),
(8,5,10,10),
(6,1,1,11),
(6,2,2,12),
(7,3,3,13),
(10,4,4,14),
(6,5,5,15),
(7,1,6,16),
(10,2,7,17),
(8,3,8,18),
(6,4,9,19),
(7,5,10,20),
(7,1,1,20),
(6,2,2,19),
(6,3,3,18),
(8,4,4,17),
(6,5,5,16),
(8,1,6,15),
(6,2,7,14),
(9,3,8,13),
(5,4,9,12),
(9,5,10,11),
(9,1,1,10),
(8,2,2,9),
(7,3,3,8),
(9,4,4,7),
(8,5,5,6),
(7,1,6,5),
(8,2,7,4),
(7,3,8,3),
(5,4,9,2),
(6,5,10,1),
(9,1,1,2),
(9,2,2,3),
(8,3,3,4),
(5,4,4,5),
(6,5,5,6),
(8,1,6,7),
(8,2,7,8),
(7,3,8,9),
(8,4,9,10),
(9,5,10,11),
(9,1,1,12),
(9,2,2,13),
(9,3,3,14),
(9,4,4,15),
(9,5,5,16),
(5,1,6,17),
(6,2,7,1),
(9,3,8,19),
(9,4,9,20),
(8,5,10,17);



SET SQL_SAFE_UPDATES=0;
BEGIN;
DELETE FROM bbdd_newacademy.grades;

ROLLBACK;
