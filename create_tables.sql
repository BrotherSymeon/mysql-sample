
USE sampledb;

CREATE TABLE member (
  member_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (member_id),
  last_name VARCHAR(20) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  suffix VARCHAR(5) NULL,
  expiration DATE NULL,
  email VARCHAR(100) NULL,
  street VARCHAR(50) NULL,
  city VARCHAR(50) NULL,
  state VARCHAR(2) NULL,
  zip VARCHAR(10) NULL,
  phone VARCHAR(20) NULL,
  interests VARCHAR(255) NULL
);


CREATE TABLE president(
  last_name VARCHAR(15) NOT NULL,
  first_name VARCHAR(15) NOT NULL,
  suffix VARCHAR(5) NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(2) NOT NULL,
  birth DATE NOT NULL,
  death DATE NULL
);



CREATE TABLE student (
  name VARCHAR(50) NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (student_id)
) ENGINE=InnoDB;

CREATE TABLE grade_event (
  date DATE NOT NULL,
  category ENUM('T', 'Q') NOT NULL,
  event_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (event_id)
)ENGINE=InnoDB;
