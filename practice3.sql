#取得平均薪水最高的公司
select a.companyName,AVG(b.salary) as avgSalary from company a join employee b on a.id = b.companyId
    -> group by companyName
    -> order by avgSalary desc limit 1;
#输出保留两位小数的sql
select a.companyName, convert(AVG(b.salary),decimal(10,2)) as avgSalary from company a join employee b on a.id = b.companyId
    -> group by companyName
    -> order by avgSalary desc limit 1;
#输出公司名称和平均薪水：companyName avgSalary


