DROP TABLE `student`; -- 要先刪除原來表格才能做新的

CREATE TABLE `student`(
	`student_id` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(20) NOT NULL, 
	`major` VARCHAR(20) UNIQUE
);



SELECT * FROM `STUDENT`;


INSERT INTO `student` VALUES(1, '小白', '歷史');
INSERT INTO `student`(`name`, `major`, `student_id`) VALUES('小藍', '英語', 2);
INSERT INTO `student`( `major`, `name`) VALUES( '地理', '小黑');