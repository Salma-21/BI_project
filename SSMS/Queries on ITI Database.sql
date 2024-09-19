
create proc studPerDept 
as
select Dept_Name,count(St_Id)
from Student S inner join Department D on D.Dept_Id=S.Dept_Id
group by Dept_Name

execute studPerDept


-------------------------

create trigger t2
on  Department
instead of insert
as
  
 select 'you can’t insert a new record in the table Department '

---------------------------------------------

create trigger stT
on student 
after  insert
as
  begin
		declare @name varchar(20),@key int,@Note  varchar(255),@var varchar(50)
		select @key=St_Id from inserted
		select @name=St_Fname+St_Lname from inserted
		set @var=convert(varchar(50),@key)
		set @Note=@name+' Insert New Row with Key='+@var+' in table Student'
		
		insert into studAudit 
		values(SUSER_NAME(),GETDATE(),@Note)
  end

-------------------------------------

  create trigger stT2
on student 
instead of delete
as
begin
		declare @name varchar(20),@key int,@Note  varchar(255),@var varchar(50)
		select @key=St_Id from deleted
		select @name=St_Fname+St_Lname from deleted
		set @var=convert(varchar(50),@key)
		set @Note='try to delete Row with Key='+@var
		
		insert into studAudit 
		values(SUSER_NAME(),GETDATE(),@Note)
  end


-----------------------------------------------

create view vstud_course (FullName,Crs_Name)
as 
select St_Fname+St_Lname [Full Name],Crs_Name 
from Student s inner join Stud_Course sc on s.St_Id=sc.St_Id
inner join Course c on sc.Crs_Id=c.Crs_Id
where Grade>50

------------------------------------------------------
create view vmanagers(Ins_Name,Top_Name)
with encryption
as 
select Ins_Name,Top_Name 
from Department d inner join Instructor i on i.Ins_Id=d.Dept_Id
inner join Ins_Course ic on ic.Ins_Id=i.Ins_Id
inner join Course c on ic.Crs_Id=c.Crs_Id
inner join Topic t on t.Top_Id=c.Top_Id

-------------------------------------
create view vinstructor (Ins_Name,Dept_Name)
as 
select Ins_Name,Dept_Name 
from Department d inner join Instructor i on i.Dept_Id=d.Dept_Id
where Dept_Name in ('SD' , 'Java' )

----------------------------------
create view v1 (St_Id,FullName,St_Address,St_Age,Dept_Id,St_super)
as 
select St_Id,St_Fname+St_Lname ,St_Address,St_Age,Dept_Id,St_super

from Student
where St_Address in ('cairo' , 'alex' )
with check option
-------------------------------------------------

create unique index i5
on student(st_age)

------------------------------------------------
SELECT St_Id, SUBSTRING(St_Fname, 1, LEN(St_Fname) - 1) AS FName
from Student

----------------------------------------------------

delete  from Stud_Course
where grade in
(
select grade
from Department d inner join Student s on s.Dept_Id=d.Dept_Id
inner join Stud_Course sc on s.St_Id=sc.St_Id
where Dept_Name='SD'
)

-----------------------------------------------

create schema student 

alter schema student transfer course
alter schema student transfer student

 