-- 1.取得所有員工資料
SELECT * FROM `employee`;

-- 2.取得所有客戶資料
SELECT * FROM `cilent`;

-- 3.按薪水低到高取得所有員工資料
SELECT * FROM `employee` ORDER BY `salary`;

-- 4.取得薪水前3高的員工
SELECT * 
FROM `employee` 
ORDER BY `salary` DESC
LIMIT 3;

-- 5.取得所有員工的名字
SELECT `name` FROM `employee`; -- 若是要員工名字不重複的話要改成 SELECT DISTINCT `name` FROM `employee`;
