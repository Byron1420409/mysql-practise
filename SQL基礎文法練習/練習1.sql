CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,
	`name` VARCHAR(20),
	`major` VARCHAR(20)
);
SELECT * FROM `student`;


INSERT INTO `student` VALUES(1, '小白', '歷史');
INSERT INTO `student`(`name`, `major`, `student_id`) VALUES('小藍', '英語', 2);
INSERT INTO `student`( `major`, `student_id`) VALUES( '國語', 3);