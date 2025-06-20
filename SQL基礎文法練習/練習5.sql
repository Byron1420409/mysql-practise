-- 創建公司資料庫表格

CREATE TABLE `employee`(
`emp_id` INT PRIMARY KEY,
`name` VARCHAR(20),
`birth_date` DATE,
`sex` VARCHAR(1),
`salary` INT,
`branch_id` INT,
`sup_id` INT
);

CREATE TABLE `branch`(
`branch_id` INT PRIMARY KEY,
`branch_name` VARCHAR(20),
`manager_id` INT,
FOREIGN KEY (`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL
);

ALTER TABLE `employee`
ADD FOREIGN KEY(`branch_id`)
REFERENCES `branch`(`branch_id`) 
ON DELETE SET NULL;

ALTER TABLE `employee`
ADD FOREIGN KEY(`sup_id`)
REFERENCES `employee`(`emp_id`) 
ON DELETE SET NULL;

CREATE TABLE `cilent`(
`cilent_id` INT PRIMARY KEY,
`cilent_name` VARCHAR(20),
`phone` VARCHAR(20)
);

CREATE TABLE `works_with`(
`emp_id` INT ,
`cilent_id` INT,
`total_sales` INT,
PRIMARY KEY(`emp_id`, `cilent_id`),
FOREIGN KEY(`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
FOREIGN KEY(`cilent_id`) REFERENCES `cilent`(`cilent_id`) ON DELETE CASCADE
);

INSERT  INTO `branch` VALUES(1, '研發', NULL);
INSERT  INTO `branch` VALUES(2, '行政', NULL);
INSERT  INTO `branch` VALUES(3, '資訊', NULL);

INSERT  INTO `employee` VALUES(206, '小黃', '1998-10-08', 'F', 50000, 1, NULL);
INSERT  INTO `employee` VALUES(207, '小綠', '1985-09-16', 'M', 29000, 2, 206);
INSERT  INTO `employee` VALUES(208, '小黑', '1998-12-19', 'M', 35000, 3, 206);
INSERT  INTO `employee` VALUES(209, '小白', '1998-01-22', 'F', 39000, 3, 207);
INSERT  INTO `employee` VALUES(210, '小藍', '1925-11-10', 'F', 84000, 1, 207);

UPDATE `branch`
SET `manager_id` =206
WHERE `branch_id` = 1;

UPDATE `branch`
SET `manager_id` =207
WHERE `branch_id` = 2;

UPDATE `branch`
SET `manager_id` =208
WHERE `branch_id` = 3;

INSERT  INTO `cilent` VALUES(400, '阿狗', 254354335);
INSERT  INTO `cilent` VALUES(401, '阿貓', 25633899);
INSERT  INTO `cilent` VALUES(402, '旺來', 45354345);
INSERT  INTO `cilent` VALUES(403, '露西', 54354365);
INSERT  INTO `cilent` VALUES(404, '艾瑞克', 18783783);

INSERT  INTO `works_with` VALUES(206, 400, '70000');
INSERT  INTO `works_with` VALUES(207, 401, '24000');
INSERT  INTO `works_with` VALUES(208, 402, '9800');
INSERT  INTO `works_with` VALUES(209, 403, '24000');
INSERT  INTO `works_with` VALUES(210, 404, '87940');

