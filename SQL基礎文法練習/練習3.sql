-- 修改並刪除資料alter

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,
	`name` VARCHAR(20),
	`major` VARCHAR(20),
    `score` INT
);

SELECT * FROM `student`;
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '英文', '小白', 1 ,50);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '生物', '小黃', 2, 90);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '歷史', '小綠', 3, 70);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '英文', '小藍', 4, 80);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '化學', '小黑', 5, 20 );

UPDATE `student`
SET `major` = '英文文學'
WHERE `major` = '英文';

UPDATE `student` -- 合併
SET `major` = '生化'
WHERE `major` = '生物' OR `major` = '化學';

UPDATE `student` 
SET `name` = '小灰' , `major` = '物理'
WHERE `student_id` = 1;

UPDATE `student` 
SET  `major` = '物理';

DELETE FROM `student` 
WHERE `student_id` = 4;

DELETE FROM `student` 
WHERE `name` = '小灰' AND `major` = '物理';

DELETE FROM `student` 
WHERE `score` < 60;