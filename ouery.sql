create table Department (DeptNo(INT), Dname(varchar), Location(varchar),PRIMARY KEY(DeptNo)) ;
create table Employee (EmpNo Int, Ename varchar(30), Job (30), MGR varchar(30), Hiredate (Date), Salary(int), DeptNo(int),PRIMARY KEY(EmpNo));












SELECT d.Dname As Department,COUNT(e.EmpNO) AS TotalEmployee FROM Department d INNER JOIN Employee e ON d.`DeptNo`=e.`DeptNo` GROUP BY Dname;