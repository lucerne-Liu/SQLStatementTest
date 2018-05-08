# 找出薪水在公司的平均薪水之上的人员名字
select a.*,b.companyName,b.avgsal
    -> from employee a,(
    -> select a.id,a.companyName, convert(AVG(b.salary),decimal(10,2)) as avgsal from company a join employee b on a.id = b.companyId group by companyName) b
     -> where a.companyId = b.id and a.salary > b.avgsal;
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
