create database Academy

use Academy

create table Departments
(
Id int not null identity(1, 1) primary key,
Financing money not null check(Financing!<0) default 0,
Name nvarchar(100) not null check(Name<>'') unique,
FacultyId int not null foreign key references Faculties(Id) 
)
go 
create table Faculties
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique
)
go 
drop table Groups
create table Groups
(
Id int not null identity(1, 1) primary key,
Name nvarchar(10) not null check(Name<>'') unique,
[Year] int not null check([Year] between 1 and 5),
DepartmentId int not null foreign key references Departments(Id)
)
go 

create table GroupsLectures
(
Id int not null identity(1, 1) primary key,
GroupId int not null foreign key references Groups(Id),
LectureId int not null foreign key references Lectures(Id)
) 
go
create table Lectures
(
Id int not null identity(1, 1) primary key,
[DayOfWeek] int not null check([DayOfWeek] between 1 and 7),
LectureRoom nvarchar(max) not null check(LectureRoom<>''),
SubjectId int not null foreign key references Subjects(Id),
TeacherId int not null foreign key references Teachers(Id)
) 
drop table Lectures
go 
create table Subjects
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique
)
go
drop table Teachers
create table Teachers
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''),
Salary money not null check(Salary>0),
Surname nvarchar(max) not null check(Surname<>'')
) 




insert into Faculties (Name) values ('Faculty Alpha');
insert into Faculties (Name) values ('Faculty Beta');
insert into Faculties (Name) values ('Faculty Gamma');
insert into Faculties (Name) values ('Faculty Delta');
insert into Faculties (Name) values ('Faculty Epsilon');
insert into Faculties (Name) values ('Faculty Zeta');
insert into Faculties (Name) values ('Faculty Eta');
insert into Faculties (Name) values ('Faculty Theta');
insert into Faculties (Name) values ('Faculty Iota');
insert into Faculties (Name) values ('Faculty Kappa');
insert into Faculties (Name) values ('Faculty Lambda');
insert into Faculties (Name) values ('Faculty Mu');
insert into Faculties (Name) values ('Faculty Nu');
insert into Faculties (Name) values ('Faculty Xi');
insert into Faculties (Name) values ('Faculty Omicron');
insert into Faculties (Name) values ('Faculty Pi');
insert into Faculties (Name) values ('Faculty Rho');
insert into Faculties (Name) values ('Faculty Sigma');
insert into Faculties (Name) values ('Faculty Tau');
insert into Faculties (Name) values ('Faculty Upsilon');



insert into Departments (Financing, Name, FacultyId) values (5000, 'Department Alpha', 5);
insert into Departments (Financing, Name, FacultyId) values (6000, 'Department Beta', 8);
insert into Departments (Financing, Name, FacultyId) values (7000, 'Department Gamma', 3);
insert into Departments (Financing, Name, FacultyId) values (8000, 'Department Delta', 12);
insert into Departments (Financing, Name, FacultyId) values (9000, 'Department Epsilon', 7);
insert into Departments (Financing, Name, FacultyId) values (10000, 'Department Zeta', 1);
insert into Departments (Financing, Name, FacultyId) values (11000, 'Department Eta', 15);
insert into Departments (Financing, Name, FacultyId) values (12000, 'Department Theta', 6);
insert into Departments (Financing, Name, FacultyId) values (13000, 'Department Iota', 14);
insert into Departments (Financing, Name, FacultyId) values (14000, 'Department Kappa', 2);
insert into Departments (Financing, Name, FacultyId) values (15000, 'Department Lambda', 19);
insert into Departments (Financing, Name, FacultyId) values (16000, 'Department Mu', 9);
insert into Departments (Financing, Name, FacultyId) values (17000, 'Department Nu', 11);
insert into Departments (Financing, Name, FacultyId) values (18000, 'Department Xi', 4);
insert into Departments (Financing, Name, FacultyId) values (19000, 'Department Omicron', 10);
insert into Departments (Financing, Name, FacultyId) values (20000, 'Department Pi', 13);
insert into Departments (Financing, Name, FacultyId) values (21000, 'Department Rho', 17);
insert into Departments (Financing, Name, FacultyId) values (22000, 'Department Sigma', 16);
insert into Departments (Financing, Name, FacultyId) values (23000, 'Department Tau', 18);
insert into Departments (Financing, Name, FacultyId) values (24000, 'Department Upsilon', 20);


insert into Groups (Name, [Year], DepartmentId) values ('Group Al', 5, 12);
insert into Groups (Name, [Year], DepartmentId) values ('Group Beta', 5, 5);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ga', 5, 19);
insert into Groups (Name, [Year], DepartmentId) values ('Group De', 5, 7);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ep', 5, 14);
insert into Groups (Name, [Year], DepartmentId) values ('Group Zeta', 5, 6);
insert into Groups (Name, [Year], DepartmentId) values ('Group Eta', 5, 3);
insert into Groups (Name, [Year], DepartmentId) values ('Group Th', 5, 17);
insert into Groups (Name, [Year], DepartmentId) values ('Group Iota', 5, 8);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ka', 5, 11);
insert into Groups (Name, [Year], DepartmentId) values ('Group La', 1, 10);
insert into Groups (Name, [Year], DepartmentId) values ('Group Mu', 2, 15);
insert into Groups (Name, [Year], DepartmentId) values ('Group Nu', 3, 20);
insert into Groups (Name, [Year], DepartmentId) values ('Group Xi', 4, 9);
insert into Groups (Name, [Year], DepartmentId) values ('Group Om', 5, 13);
insert into Groups (Name, [Year], DepartmentId) values ('Group Pi', 5, 16);
insert into Groups (Name, [Year], DepartmentId) values ('Group Rho', 2, 4);
insert into Groups (Name, [Year], DepartmentId) values ('Group Si', 3, 18);
insert into Groups (Name, [Year], DepartmentId) values ('Group Tau', 4, 2);
insert into Groups (Name, [Year], DepartmentId) values ('Group Up', 5, 1);


insert into Subjects (Name) values ('Mathematics');
insert into Subjects (Name) values ('Physics');
insert into Subjects (Name) values ('Chemistry');
insert into Subjects (Name) values ('Biology');
insert into Subjects (Name) values ('Computer Science');
insert into Subjects (Name) values ('History');
insert into Subjects (Name) values ('Geography');
insert into Subjects (Name) values ('Philosophy');
insert into Subjects (Name) values ('Psychology');
insert into Subjects (Name) values ('Economics');
insert into Subjects (Name) values ('Political Science');
insert into Subjects (Name) values ('Engineering');
insert into Subjects (Name) values ('Literature');
insert into Subjects (Name) values ('Sociology');
insert into Subjects (Name) values ('Linguistics');
insert into Subjects (Name) values ('Astronomy');
insert into Subjects (Name) values ('Anthropology');
insert into Subjects (Name) values ('Medicine');
insert into Subjects (Name) values ('Law');
insert into Subjects (Name) values ('Business Studies');



insert into Teachers (Name, Surname, Salary) values ('John', 'Smith', 50000);
insert into Teachers (Name, Surname, Salary) values ('Alice', 'Johnson', 55000);
insert into Teachers (Name, Surname, Salary) values ('Michael', 'Brown', 60000);
insert into Teachers (Name, Surname, Salary) values ('Emma', 'Davis', 62000);
insert into Teachers (Name, Surname, Salary) values ('Oliver', 'Martinez', 58000);
insert into Teachers (Name, Surname, Salary) values ('Sophia', 'Garcia', 61000);
insert into Teachers (Name, Surname, Salary) values ('James', 'Rodriguez', 57000);
insert into Teachers (Name, Surname, Salary) values ('Charlotte', 'Lopez', 59000);
insert into Teachers (Name, Surname, Salary) values ('William', 'Hernandez', 53000);
insert into Teachers (Name, Surname, Salary) values ('Amelia', 'Gonzalez', 54000);
insert into Teachers (Name, Surname, Salary) values ('Ethan', 'Wilson', 56000);
insert into Teachers (Name, Surname, Salary) values ('Mia', 'Anderson', 63000);
insert into Teachers (Name, Surname, Salary) values ('Benjamin', 'Thomas', 52000);
insert into Teachers (Name, Surname, Salary) values ('Isabella', 'Taylor', 51000);
insert into Teachers (Name, Surname, Salary) values ('Lucas', 'Moore', 58000);
insert into Teachers (Name, Surname, Salary) values ('Harper', 'Jackson', 60000);
insert into Teachers (Name, Surname, Salary) values ('Henry', 'White', 64000);
insert into Teachers (Name, Surname, Salary) values ('Evelyn', 'Harris', 65000);
insert into Teachers (Name, Surname, Salary) values ('Alexander', 'Clark', 62000);
insert into Teachers (Name, Surname, Salary) values ('Scarlett', 'Lewis', 61000);


insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (1, 'Room 101', 3, 7);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (2, 'Room 102', 5, 15);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (3, 'Room 103', 8, 4);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (4, 'Room 104', 12, 10);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (5, 'Room 105', 2, 18);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (6, 'Room 106', 9, 6);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (7, 'Room 107', 14, 20);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (1, 'Room 108', 11, 1);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (2, 'Room 109', 6, 12);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (3, 'Room 110', 7, 3);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (4, 'Room 111', 1, 9);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (5, 'Room 112', 4, 16);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (6, 'Room 113', 10, 8);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (7, 'Room 114', 13, 5);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (1, 'Room 115', 15, 14);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (2, 'Room 116', 16, 2);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (3, 'Room 117', 17, 11);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (4, 'Room 118', 18, 13);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (5, 'Room 119', 19, 19);
insert into Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) values (6, 'Room 120', 20, 17);

select count(t.id) as [Count]
from teachers t
join lectures l on t.id = l.teacherid
join subjects s on l.subjectid = s.id
join groups g on s.id = g.id -- 
join departments d on g.departmentid = d.id
where d.name = 'Software Development';






select count(l.id) 
from lectures l
join teachers t on l.teacherid = t.id
where t.name = 'Dave McQueen';

select count(l.id) 
from lectures l
where l.lectureroom = 'D201';

select l.lectureroom, count(l.id)
from lectures l
group by l.lectureroom;

select count(distinct g.id) 
from groups g
join groupslectures gl on g.id = gl.groupid
join lectures l on gl.lectureid = l.id
join teachers t on l.teacherid = t.id
where t.name = 'Jack Underhill';

select avg(t.salary) 
from teachers t
join lectures l on t.id = l.teacherid
join groups g on l.id = g.id
join departments d on g.departmentid = d.id
where d.name = 'Computer Science';

select min(group_size), max(group_size)
from (select count(g.id) as group_size
      from groups g
      group by g.id) as group_sizes;

select avg(d.financing) 
from departments d;


select t.name + ' ' + t.surname as full_name, count(l.id) 
from teachers t
join lectures l on t.id = l.teacherid
group by t.name, t.surname;

select l.dayofweek, count(l.id)
from lectures l
group by l.dayofweek;

select l.lectureroom, count(distinct d.id) 
from lectures l
join departments d on l.id = d.id
group by l.lectureroom;


select f.name, count(distinct s.id)
from faculties f
join departments d on f.id = d.facultyid
join lectures l on d.id = l.id
join subjects s on l.subjectid = s.id
group by f.name;

select t.name + ' ' + t.surname as teacher_name, l.lectureroom, count(l.id)
from lectures l
join teachers t on l.teacherid = t.id
group by t.name, t.surname, l.lectureroom;
