select * from dept;

select name, age, macr from stu order by macr desc;

select name from stu where deptno = 23;

select name from stu where edate between '01-01-2021' and '01-01-2023';

select deptno, count(*) as stunum, avg(macr + isnull(micr, 0)) as avcr from stu group by deptno;

select * from stu where deptno = 20 and macr > (select avg(macr) from stu where deptno = 20);

select * from stu where deptno = 23 and edate = (select min(edate) from stu where deptno = 23);

select d.deptno, d.dname from stu s join dept d on s.deptno = d.deptno;

select s1.stno from stu s1 join stu s2 on s1.monit = s2.stno where s1.macr >= s2.macr;

select s.stno, s.name from stu s join teacher t on s.deptno = t.deptno where t.name = 'ZHANG SAN';

select t.name, d.dname from teacher t join dept d on t.deptno = d.deptno join teacher h on d.head = h.tno where t.wdate < h.wdate;