create database attendanceSystem2
use attendanceSystem2
go

create table Yearlevel
(
Yearlevel_ID int primary key not null,
Yearlevel varchar(50) not null,
)
create table Student
(
Student_ID varchar(8) primary key not null,
LastName varchar(50) not null,
MiddleName varchar(50) not null,
FirstName varchar(50) not null,
Yearlevel_ID int foreign key references Yearlevel(Yearlevel_ID) ON UPDATE CASCADE ON DELETE CASCADE
)
create table Class
(
Class_ID varchar(7) primary key, 
descriptions varchar(50) not null,
DFrom date not null,
DTo int not null,
semester int not null,
SYear int not null
)
create table Slot
( 
Slot_No varchar(8) primary key not null,
Dfrom int not null,
Dto int not null,
)
create table Attendance
(
Attendance_ID int primary key,
Student_ID varchar(8) foreign key references Student(Student_ID) ON UPDATE CASCADE ON DELETE CASCADE,
Statuss varchar(8) not null,
Class_ID varchar(7) foreign key references Class(Class_ID)ON UPDATE CASCADE ON DELETE CASCADE,
Slot_No varchar(8) foreign key references Slot(Slot_No) ON UPDATE CASCADE ON DELETE CASCADE,
)



 
create table Subject
( 
Subject_ID int primary key not null,
SubjectInitial varchar(30) not null,
SubjectName varchar(30) not null,
Attendance int foreign key references Attendance(Attendance_ID) ON UPDATE CASCADE ON DELETE CASCADE,
)
insert into Yearlevel values(1,'Fresher')
insert into Yearlevel values(2,'beginer')
insert into Yearlevel values(3,'INTERMEDIATE')
insert into Yearlevel values(4,'ADVANCED')
insert into Student values('GCH17230','VINH','THE','DO',1)
insert into Student values('GCH17231','DUONG','THUY','PHAM',2)
insert into Student values('GCH17232','HIEN','VAN','LE',3)
insert into Student values('GCH17233','NGUYEN','ANH','TRAN',1)
insert into Student values('GCH17234','GIANG','TRUONG','DUC',1)
insert INTO Class VALUES('GCH0712','Top1dsadsad','12:30',1,2,3)
insert INTO Class VALUES('GCH0713','Top1dsadsaắ','12:32',2,4,5)
insert INTO Class VALUES('GCH0714','Top1dsadsaắ','12:32',2,4,5)
insert INTO Class VALUES('GCH0715','Top1dsadsaắ','12:32',2,4,5)
insert into Slot values('slot5',2,4)
insert into Slot values('slot6',2,4)
insert into Slot values('slot7',2,3)
insert into Attendance values(1,'GCH17230','Absent','GCH0712','SLOT5')
insert into Attendance values(2,'GCH17231','Present','GCH0713','SLOT5')
insert into Attendance values(3,'GCH17232','Present','GCH0714','SLOT5')
insert into Attendance values(4,'GCH17233','Absent','GCH0715','SLOT5')
insert into Subject values(1,'entertainment','Professional Practice (1620)',1)
insert into Subject values(2,'education','Professional Practice (1620)',1)
insert into Subject values(3,'gender','Professional Practice (1620)',1)
select Yearlevel_ID,Yearlevel From Yearlevel
select Student_ID,LastName,FirstName,MiddleName,Yearlevel_ID from Student
select Class_ID,descriptions,DFrom,DTo,semester,SYear from Class
select Slot_No,Dfrom,Dto from Slot
select Attendance_ID,Student_ID,Statuss,Class_ID,Slot_No from Attendance
select Subject_ID,SubjectInitial,SubjectName,Attendance from Subject
update Yearlevel set Yearlevel = 'beginer' where Yearlevel_ID = 4 
update Student set LastName = 'TUAN', FirstName = 'ANH', MiddleName = 'LƯU' where Student_ID = 'GCH17230';
update Class set descriptions = 'top1234', DFrom = '1900-01-01'  where Class_ID = 'GCH0712' 
update Slot set Dfrom = 5, Dto = 6 where Slot_No = 'slot6' 
update Attendance set Student_ID = 'GCH17231', Statuss = 'Absent' where Attendance_ID = 2 
update Subject set SubjectInitial = 'gender', SubjectName = 'database developer(1622)' where Subject_ID = 2 
delete from Yearlevel where Yearlevel_ID = 1
delete from Student where Student_ID  = 'GCH17232'
delete from Class where Class_ID = 'GCH0712'
delete from Subject where Subject_ID = 'SubjectID'
delete from Slot where Slot_No = 'Slot_No'
delete from Student where Student_ID = 'GCH17230';
select * from student;
delete from Student where Student_ID='GCH17230';
