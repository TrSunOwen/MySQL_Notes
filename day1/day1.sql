
CREATE TABLE student ( 
 
 id INT, -- 编号
 NAME VARCHAR(20), -- 姓名
 age INT, -- 年龄
 sex VARCHAR(5), -- 性别
 address VARCHAR(100), -- 地址
 math INT, -- 数学
 english INT -- 英语
);
INSERT INTO student(id,NAME,age,sex,address,math,english) VALUES (1,'马云',55,'男','
杭州',66,78),(2,'马化腾',45,'女','深圳',98,87),(3,'马景涛',55,'男','香港',56,77),(4,'柳岩
',20,'女','湖南',76,65),(5,'柳青',20,'男','湖南',86,NULL),(6,'刘德华',57,'男','香港',99,99),(7,'马德',22,'女','香港',99,99),(8,'德玛西亚',18,'男','南京',56,65);

DROP TABLE student;

SELECT * FROM student;

-- 查询姓名和年龄
SELECT NAME,age FROM student;

SELECT address -- 地址 
FROM student;

SELECT DISTINCT address FROM student;

SELECT DISTINCT NAME, address FROM student;

-- 计算math和english之和
SELECT NAME, math, english, math+english FROM student;
-- 如果有null参与的计算，计算结果都为null

SELECT NAME, math, english, math + IFNULL(english,0) FROM student; 

-- 起别名
SELECT NAME, math, english, math + IFNULL(english,0) AS totalscore FROM student;

SELECT * FROM student;

-- 查询年龄
SELECT * FROM student WHERE age > 20;
SELECT * FROM student WHERE age >= 20;
SELECT * FROM student WHERE age = 20;
SELECT * FROM student WHERE age != 20;
SELECT * FROM student WHERE age <> 20;

-- 查询20-30岁之间
SELECT * FROM student WHERE age >= 20 AND age <= 30;
SELECT * FROM student WHERE age BETWEEN 20 AND 30; -- 这样写也可以

-- 查询年龄22岁或19岁或25岁的信息
SELECT * FROM student WHERE age = 22 OR age = 19 OR age = 25;
SELECT * FROM student WHERE age IN (22, 19, 25); -- 这样写也可以

-- 查询英语成绩为null
SELECT * FROM student WHERE english = NULL; -- 这条语句不对，null值不能用 = 和 != 判断 必须用is
SELECT * FROM student WHERE english IS NULL; -- 正确写法

-- 英语成绩不是null
SELECT * FROM student WHERE english IS NOT NULL; -- 很像英语的语法习惯

-- 查询姓马的有哪些？ like
SELECT * FROM student WHERE NAME LIKE '马%';

-- 查询姓名第二个字是化的人
SELECT * FROM student WHERE NAME LIKE '_化%';

-- 查询姓名是三个字的人
SELECT * FROM student WHERE NAME LIKE "___";

-- 查询姓名中包含德的人
SELECT * FROM student WHERE NAME LIKE "%德%";

