CREATE DATABASE `bbdd_newacademy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(45) NOT NULL,
  `courses_grades_id` int DEFAULT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `course_teacher_id_idx` (`courses_teachers_id`),
  KEY `courses_student_id_idx` (`courses_student_id`),
  KEY `courses_grades_id_idx` (`courses_grades_id`),
  CONSTRAINT `courses_grades_id` FOREIGN KEY (`courses_grades_id`) REFERENCES `grades` (`grades_id`) ON DELETE CASCADE

) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_value` int NOT NULL,
  `grades_students_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  `grades_teachers_id` int NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
CREATE TABLE `teachers` (
  `teachers_id` int NOT NULL AUTO_INCREMENT,
  `teachers_name` varchar(45) NOT NULL,
  PRIMARY KEY (`teachers_id`),
  UNIQUE KEY `teachers_id_UNIQUE` (`teachers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;