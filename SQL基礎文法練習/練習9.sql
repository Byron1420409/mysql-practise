-- join 連接

INSERT INTO `branch` VALUES(4, '偷懶', NULL);

-- 取得所有部門經理的名字
SELECT `emp_id`, `name`, `branch_name`
FROM `employee`
JOIN `branch`  -- 補充LIFT(RIGHT) JION是不管後面是否成功都會把左方(右方)表格全部執行，這裡指的是employee(branch)
ON `emp_id` = `manager_id`;