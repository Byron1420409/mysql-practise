-- 取得資料

CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,
	`name` VARCHAR(20),
	`major` VARCHAR(20),
    `score` INT
);


INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '英文', '小白', 1 ,20);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '歷史', '小黑', 2, 60);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '生物', '小綠', 3, 20);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '英文', '小藍', 4, 90);
INSERT INTO `student`( `major`, `name`,`student_id`, `score`) VALUES( '化學', '小黃', 5, 70 );

-- ......................................................................................................
SELECT * 
FROM `student`;

SELECT `name`, `major` 
FROM `student`;

SELECT * 
FROM `student` 
ORDER BY `score`;

SELECT * 
FROM `student` 
ORDER BY `score` DESC;

SELECT * 
FROM `student` 
ORDER BY `score`, `student_id`;

SELECT * 
FROM `student`
LIMIT 3;

SELECT * 
FROM `student`
WHERE `major` = '英文';

SELECT * 
FROM `student`
WHERE `major` = '英文' OR `score` <> 20 ;

SELECT * 
FROM `student`
WHERE `major` IN('歷史', '英文', '生物') ;