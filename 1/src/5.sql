select * from ee_stu where macr = (select max(macr) from ee_stu);

drop view ee_stu;