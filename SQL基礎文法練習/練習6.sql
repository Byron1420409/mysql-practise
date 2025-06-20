-- aggregate functions 聚合函數alter

-- 1.取得所有員工人數
SELECT COUNT(*) FROM `employee`;

-- 2.取得所有出生於 1970-01-01 之後的女性員工人數alter
SELECT COUNT(*) 
FROM `employee` 
WHERE `birth_date` > '1970-01-01' AND `sex` = 'F' ;

-- 3.取得所有員工的平均薪水
SELECT AVG(`salary`) FROM `employee`;

-- 4.取得所有員工薪水的總和
SELECT SUM(`salary`) FROM `employee`;

-- 5.取得薪水最高的員工
SELECT MAX(`salary`) FROM `employee`;

-- 6.取得薪水最低的員工
SELECT MIN(`salary`) FROM `employee`;
