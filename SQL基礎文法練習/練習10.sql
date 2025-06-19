-- subquery 子查詢

-- 1.找出所有研發部門經理的名字
SELECT `name`
FROM `employee`
where `emp_id` = (
	SELECT `manager_id`
	FROM `branch`
	where `branch_name` = '研發'
);

-- 2. 找出對酖一位客戶銷售金額超過50000的員工名字
SELECT `name`
FROM `employee`
where `emp_id` IN(
	SELECT `emp_id`
	FROM `works_with`
	where `total_sales` > 50000
);