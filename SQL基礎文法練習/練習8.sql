-- union 聯集

-- 1.員工名字 union 客戶名字
SELECT `name`
FROM `employee`  
UNION
SELECT `cilent_name`
FROM `cilent` ;
 
-- 2.員工id + 員工名字 union 客戶id + 客戶名字
SELECT `emp_id`, `name`  -- 若要改名字就要改成 SELECT `emp_id` AS `total_id`, `name` AS `total_name`
FROM `employee`  
UNION
SELECT `cilent_id`,`cilent_name`
FROM `cilent` ;

-- 3.員工薪水 union 銷售金額
SELECT `salary`
FROM `employee`  
UNION
SELECT `total_sales`
FROM `works_with` ;