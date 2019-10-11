

CREATE TABLE score (
  student_id INT UNSIGNED NOT NULL,
  event_id INT UNSIGNED NOT NULL,
  score INT NOT NULL,
  PRIMARY KEY (event_id, student_id),
  INDEX (student_id),
  FOREIGN KEY (event_id) REFERENCES grade_event (event_id),
  FOREIGN KEY (student_id) REFERENCES student (student_id)
)ENGINE=InnoDB;

