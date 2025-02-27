create database Academy

use Academy

create table Curators
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max)not null check(Name<>'')
)
go
create table Departments
(
Id int not null identity(1, 1) primary key,
Financing money not null check(Financing!<0) default 0,
Name nvarchar(100) not null check(Name<>'') unique,
FacultyId int not null foreign key references Faculties(Id),
)
create table Faculties
(
Id int not null identity(1, 1) primary key,
Financing money not null check(Financing!<0) default 0,
Name nvarchar(100) not null check(NAme<>'') unique
)
create table Groups
(
Id int not null identity(1, 1) primary key,
Name nvarchar(10) not null check(NAme<>'') unique,
[Year] int not null check([Year] between 1 and 5),
DepartmentId int not null foreign key references Departments(Id)
)
create table GroiupsCurators
(
Id int not null identity(1, 1) primary key,
CuratorId int not null foreign key references Curators(Id),
GroupId int not null foreign key references Groups(Id)
)
create table GroupsLectures
(
Id int not null identity(1, 1) primary key,
GroupId int not null foreign key references Groups(Id),
LectureId int not null foreign key references Lectures(Id)
)
create table Lectures
(
Id int not null identity(1, 1) primary key,
LectureRoom nvarchar(max) not null check(LectureRoom<>''),
SubjectId int not null foreign key references Subjects(Id),
TeachesId int not null foreign key references Teachers(Id)
)
create table Subjects
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique
)
create table Teachers
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''),
Salary money not null check(Salary > 0),
Surname nvarchar(max) not null check(Surname<>'')
)

-- Заповнення таблиці Curators
insert into Curators (Name) values ('Curator Alpha');
insert into Curators (Name) values ('Curator Beta');
insert into Curators (Name) values ('Curator Gamma');
insert into Curators (Name) values ('Curator Delta');
insert into Curators (Name) values ('Curator Epsilon');
insert into Curators (Name) values ('Curator Zeta');
insert into Curators (Name) values ('Curator Eta');
insert into Curators (Name) values ('Curator Theta');
insert into Curators (Name) values ('Curator Iota');
insert into Curators (Name) values ('Curator Kappa');
insert into Curators (Name) values ('Curator Lambda');
insert into Curators (Name) values ('Curator Mu');
insert into Curators (Name) values ('Curator Nu');
insert into Curators (Name) values ('Curator Xi');
insert into Curators (Name) values ('Curator Omicron');
insert into Curators (Name) values ('Curator Pi');
insert into Curators (Name) values ('Curator Rho');
insert into Curators (Name) values ('Curator Sigma');
insert into Curators (Name) values ('Curator Tau');
insert into Curators (Name) values ('Curator Upsilon');

-- Заповнення таблиці Faculties
insert into Faculties (Financing, Name) values (10000, 'Faculty Alpha');
insert into Faculties (Financing, Name) values (15000, 'Faculty Beta');
insert into Faculties (Financing, Name) values (20000, 'Faculty Gamma');
insert into Faculties (Financing, Name) values (25000, 'Faculty Delta');
insert into Faculties (Financing, Name) values (30000, 'Faculty Epsilon');
insert into Faculties (Financing, Name) values (35000, 'Faculty Zeta');
insert into Faculties (Financing, Name) values (40000, 'Faculty Eta');
insert into Faculties (Financing, Name) values (45000, 'Faculty Theta');
insert into Faculties (Financing, Name) values (50000, 'Faculty Iota');
insert into Faculties (Financing, Name) values (55000, 'Faculty Kappa');
insert into Faculties (Financing, Name) values (60000, 'Faculty Lambda');
insert into Faculties (Financing, Name) values (65000, 'Faculty Mu');
insert into Faculties (Financing, Name) values (70000, 'Faculty Nu');
insert into Faculties (Financing, Name) values (75000, 'Faculty Xi');
insert into Faculties (Financing, Name) values (80000, 'Faculty Omicron');
insert into Faculties (Financing, Name) values (85000, 'Faculty Pi');
insert into Faculties (Financing, Name) values (90000, 'Faculty Rho');
insert into Faculties (Financing, Name) values (95000, 'Faculty Sigma');
insert into Faculties (Financing, Name) values (100000, 'Faculty Tau');
insert into Faculties (Financing, Name) values (105000, 'Faculty Upsilon');

-- Заповнення таблиці Departments
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


-- Заповнення таблиці Groups
insert into Groups (Name, [Year], DepartmentId) values ('Group Alpha', 5, 12);
insert into Groups (Name, [Year], DepartmentId) values ('Group Beta', 5, 5);
insert into Groups (Name, [Year], DepartmentId) values ('Group Gamma', 5, 19);
insert into Groups (Name, [Year], DepartmentId) values ('Group Delta', 5, 7);
insert into Groups (Name, [Year], DepartmentId) values ('Group Epsilon', 5, 14);
insert into Groups (Name, [Year], DepartmentId) values ('Group Zeta', 5, 6);
insert into Groups (Name, [Year], DepartmentId) values ('Group Eta', 5, 3);
insert into Groups (Name, [Year], DepartmentId) values ('Group Theta', 5, 17);
insert into Groups (Name, [Year], DepartmentId) values ('Group Iota', 5, 8);
insert into Groups (Name, [Year], DepartmentId) values ('Group Kappa', 5, 11);
insert into Groups (Name, [Year], DepartmentId) values ('Group Lambda', 1, 10);
insert into Groups (Name, [Year], DepartmentId) values ('Group Mu', 2, 15);
insert into Groups (Name, [Year], DepartmentId) values ('Group Nu', 3, 20);
insert into Groups (Name, [Year], DepartmentId) values ('Group Xi', 4, 9);
insert into Groups (Name, [Year], DepartmentId) values ('Group Omicron', 5, 13);
insert into Groups (Name, [Year], DepartmentId) values ('Group Pi', 5, 16);
insert into Groups (Name, [Year], DepartmentId) values ('Group Rho', 2, 4);
insert into Groups (Name, [Year], DepartmentId) values ('Group Sigma', 3, 18);
insert into Groups (Name, [Year], DepartmentId) values ('Group Tau', 4, 2);
insert into Groups (Name, [Year], DepartmentId) values ('Group Upsilon', 5, 1);

-- Заповнення таблиці Subjects
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

-- Заповнення таблиці Teachers
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

-- Заповнення таблиці Lectures
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 101', 3, 7);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 102', 5, 15);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 103', 8, 4);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 104', 12, 10);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 105', 2, 18);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 106', 9, 6);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 107', 14, 20);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 108', 11, 1);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 109', 6, 12);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 110', 7, 3);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 111', 1, 9);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 112', 4, 16);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 113', 10, 8);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 114', 13, 5);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 115', 15, 14);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 116', 16, 2);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 117', 17, 11);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 118', 18, 13);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 119', 19, 19);
insert into Lectures (LectureRoom, SubjectId, TeachesId) values ('Room 120', 20, 17);

-- Заповнення таблиці GroupsLectures
insert into GroupsLectures (GroupId, LectureId) values (3, 7);
insert into GroupsLectures (GroupId, LectureId) values (5, 12);
insert into GroupsLectures (GroupId, LectureId) values (8, 15);
insert into GroupsLectures (GroupId, LectureId) values (12, 1);
insert into GroupsLectures (GroupId, LectureId) values (2, 18);
insert into GroupsLectures (GroupId, LectureId) values (9, 6);
insert into GroupsLectures (GroupId, LectureId) values (14, 20);
insert into GroupsLectures (GroupId, LectureId) values (11, 3);
insert into GroupsLectures (GroupId, LectureId) values (6, 12);
insert into GroupsLectures (GroupId, LectureId) values (7, 10);
insert into GroupsLectures (GroupId, LectureId) values (1, 9);
insert into GroupsLectures (GroupId, LectureId) values (4, 16);
insert into GroupsLectures (GroupId, LectureId) values (10, 8);
insert into GroupsLectures (GroupId, LectureId) values (13, 5);
insert into GroupsLectures (GroupId, LectureId) values (15, 14);
insert into GroupsLectures (GroupId, LectureId) values (16, 2);
insert into GroupsLectures (GroupId, LectureId) values (17, 11);
insert into GroupsLectures (GroupId, LectureId) values (18, 13);
insert into GroupsLectures (GroupId, LectureId) values (19, 19);
insert into GroupsLectures (GroupId, LectureId) values (20, 17);

-- Заповнення таблиці GroiupsCurators
insert into GroiupsCurators (CuratorId, GroupId) values (5, 12);
insert into GroiupsCurators (CuratorId, GroupId) values (8, 3);
insert into GroiupsCurators (CuratorId, GroupId) values (2, 19);
insert into GroiupsCurators (CuratorId, GroupId) values (10, 7);
insert into GroiupsCurators (CuratorId, GroupId) values (1, 15);
insert into GroiupsCurators (CuratorId, GroupId) values (4, 6);
insert into GroiupsCurators (CuratorId, GroupId) values (9, 14);
insert into GroiupsCurators (CuratorId, GroupId) values (3, 8);
insert into GroiupsCurators (CuratorId, GroupId) values (6, 18);
insert into GroiupsCurators (CuratorId, GroupId) values (7, 11);
insert into GroiupsCurators (CuratorId, GroupId) values (12, 2);
insert into GroiupsCurators (CuratorId, GroupId) values (14, 9);
insert into GroiupsCurators (CuratorId, GroupId) values (15, 4);
insert into GroiupsCurators (CuratorId, GroupId) values (11, 13);
insert into GroiupsCurators (CuratorId, GroupId) values (13, 1);
insert into GroiupsCurators (CuratorId, GroupId) values (16, 10);
insert into GroiupsCurators (CuratorId, GroupId) values (17, 5);
insert into GroiupsCurators (CuratorId, GroupId) values (18, 20);
insert into GroiupsCurators (CuratorId, GroupId) values (19, 16);
insert into GroiupsCurators (CuratorId, GroupId) values (20, 17);

--Task 1
select *
from Teachers, Groups

--Task 2
select f.Name
from Faculties as f, Departments as d
where d.Financing > f.Financing

--Tssk 3
select c.Name, g.NAme
from Curators as c, Groups as g
where c.Id = g.Id

--Task 4
select t.NAme, t.Surname
from Teachers as t, GroupsLectures as l
where t.Id = l.GroupId and l.GroupId = 2

--Task 5
Select t.Surname, f.Name
from Teachers as t, Faculties as f
where t.Id = f.Id

--Task 6

select d.Name, g.Name
from Departments as d, Groups as g
where d.Id = g.DepartmentId

-- Task 7

select s.Name 
from Subjects as s, Teachers as t
where s.Id = t.Id and t.Name + ' ' + t.Surname = 'Emma Davis'

--Task 8

select d.Name
from Departments as d, Subjects as s
where d.Id = s.Id and s.Name = 'Law'

--Task 9

select g.Name
from Groups as g, Faculties as f
where g.Id = f.Id and f.Name = 'Faculty Mu'

--Task 10

select g.Name, f.Name
from Groups as g, Faculties as f
where g.[Year] = 5 and g.Id = f.Id

--Task 11

select t.surname + ' ' + t.name as full_name, s.name as subject, g.name as group_name
from teachers t
join lectures l on t.id = l.teachesid
join subjects s on l.subjectid = s.id
join groupslectures gl on l.id = gl.lectureid
join groups g on gl.groupid = g.id
where l.lectureroom = 'Room 105';
