
USE sampledb;

CREATE TABLE student (
  name VARCHAR(50) NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (student_id)
) ENGINE=InnoDB;


