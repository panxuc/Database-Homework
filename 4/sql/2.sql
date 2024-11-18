insert into supplier (supplierno, suppliername, supplieraddress) values (101, '华清', '北京市海淀区');
insert into supplier (supplierno, suppliername, supplieraddress) values (102, '大北', '北京市海淀区');
insert into supplier (supplierno, suppliername, supplieraddress) values (103, '旦复', '上海市杨浦区');
insert into part (partno, partname, partcolor) values (201, '螺母', '紫');
insert into part (partno, partname, partcolor) values (202, '螺丝', '红');
insert into part (partno, partname, partcolor) values (203, '螺丝刀', '蓝');
insert into part (partno, partname, partcolor) values (204, '钢钉', '银');
insert into part (partno, partname, partcolor) values (205, '垫片', '红');
insert into project (projectno, projectname, projectaddress) values (301, '螺母楼扩建', '北京市海淀区');
insert into project (projectno, projectname, projectaddress) values (302, '紫金公寓改造', '北京市海淀区');
insert into project (projectno, projectname, projectaddress) values (303, '太空电梯建设', '印度尼西亚');
insert into project (projectno, projectname, projectaddress) values (304, '地心钻探', '俄罗斯');
insert into supply (supplierno, partno) values (101, 201);
insert into supply (supplierno, partno) values (101, 203);
insert into supply (supplierno, partno) values (102, 202);
insert into supply (supplierno, partno) values (102, 204);
insert into supply (supplierno, partno) values (102, 205);
insert into supply (supplierno, partno) values (103, 201);
insert into supply (supplierno, partno) values (103, 202);
insert into supply (supplierno, partno) values (103, 205);
insert into apply (partno, projectno) values (201, 301);
insert into apply (partno, projectno) values (201, 302);
insert into apply (partno, projectno) values (202, 303);
insert into apply (partno, projectno) values (203, 301);
insert into apply (partno, projectno) values (203, 302);
insert into apply (partno, projectno) values (203, 303);
insert into apply (partno, projectno) values (204, 304);
insert into supplyapply (supplierno, partno, projectno) select supp.supplierno, app.partno, app.projectno from supply supp join apply app on supp.partno = app.partno;