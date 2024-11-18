select distinct s.suppliername from supplier s join supplyapply sa on s.supplierno = sa.supplierno where sa.projectno = 301

select distinct pr.projectname from project pr join supplyapply sa on pr.projectno = sa.projectno where sa.supplierno = 101

select distinct pr.projectname from project pr join supplyapply sa on pr.projectno = sa.projectno join part pa on sa.partno = pa.partno where pa.partcolor = '红'

select distinct s.suppliername from supplier s join supplyapply sa on s.supplierno = sa.supplierno join project pr on pr.projectno = sa.projectno where s.supplieraddress = '北京市海淀区' and pr.projectaddress != '北京市海淀区' and not exists (select 1 from supplyapply sa2 join part pa on sa2.partno = pa.partno where sa2.projectno = pr.projectno and pa.partcolor = '红')

select distinct pr.projectname from project pr join supplyapply sa on pr.projectno = sa.projectno where sa.supplierno = 101 and not exists (select 1 from supplyapply sa2 where sa2.supplierno = 101 and sa2.partno not in (select sa3.partno from supplyapply sa3 where sa3.projectno = sa.projectno))
