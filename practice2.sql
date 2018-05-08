# 取得每个company中最高薪水的人员名字
select a.companyName, b.name from company a join employee b on b.id =
(select id from employee where companyId = a.id order by salary desc limit 1);
# 输出结果包含公司名称和人员名称：companyName name
