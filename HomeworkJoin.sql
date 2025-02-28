create database Academy


use Academy

create table Assistants
(
Id int not null identity(1, 1) primary key,
TeacherId int not null foreign key references Teachers(Id)
)
go
create table Curators
(
Id int not null identity(1, 1) primary key,
TeacherId int not null foreign key references Teachers(Id)
)
go
create table Deans
(
Id int not null identity(1, 1) primary key,
TeacherId int not null foreign key references Teachers(Id)
)
go 
create table Departments
(
Id int not null identity(1, 1) primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(100) not null check(Name<>'') unique,
FacultyId int not null foreign key references Faculties(Id),
HeadId int not null foreign key references Heads(Id)
)
go
create table Faculties
(
Id int not null identity(1, 1) primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(100) not null check(Name<>'') unique,
DeanId int not null foreign key references Deans(Id)
)
go
create table Groups
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique,
[Year] int not null check([Year] between 1 and 5),
DepartmentId int not null foreign key references Departments(Id)
)
go 
create table GroupsCurators
(
Id int not null identity(1, 1) primary key,
CuratorId int not null foreign key references Curators(Id),
GroupId int not null foreign key references Groups(Id)
)
go 
create table GroupsLectures
(
Id int not null identity(1, 1) primary key,
GroupId int not null foreign key references Groups(Id),
LectureId int not null foreign key references Lectures(Id)
)
go 
select *
from Groups
create table Heads
(
Id int not null identity(1, 1) primary key,
TeacherId int not null foreign key references Teachers(Id)
)

go 
create table LectureRooms
(
Id int not null identity(1, 1) primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(100) not null check(Name<>'') unique
)
go
select *
from  Teachers, Subjects as s
order by s.Id
create table Lectures
(
Id int not null identity(1, 1) primary key,
SubjectId int not null foreign key references Subjects(Id),
TeacherId int not null foreign key references Teachers(Id)
)
go
create table Schedules
(
Id int not null identity(1, 1) primary key,
Class int not null check(Class between 1 and 8),
[DayOfWeek] int not null check([DayOfWeek] between 1 and 7),
[Week] int not null check([Week] between 1 and 52),
LectureId int not null foreign key references Lectures(Id),
LectureRoomId int not null foreign key references LectureRooms(Id)
)
go
select *
from LectureRooms
create table Subjects
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique
)
create table Teachers
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''), 
Surname nvarchar(max) not null check(Surname<>'')
)


-- Faculties
Insert into Faculties (Building, Name, DeanId) Values (1, 'Computer Science', 1);
Insert into Faculties (Building, Name, DeanId) Values (2, 'Mathematics', 2);
Insert into Faculties (Building, Name, DeanId) Values (3, 'Physics', 3);
Insert into Faculties (Building, Name, DeanId) Values (4, 'Biology', 4);
Insert into Faculties (Building, Name, DeanId) Values (5, 'Chemistry', 5);
Insert into Faculties (Building, Name, DeanId) Values (1, 'History', 6);
Insert into Faculties (Building, Name, DeanId) Values (2, 'Philosophy', 7);
Insert into Faculties (Building, Name, DeanId) Values (3, 'Engineering', 8);
Insert into Faculties (Building, Name, DeanId) Values (4, 'Medicine', 9);
Insert into Faculties (Building, Name, DeanId) Values (5, 'Law', 10);
Insert into Faculties (Building, Name, DeanId) Values (1, 'Economics', 11);
Insert into Faculties (Building, Name, DeanId) Values (2, 'Political Science', 12);
Insert into Faculties (Building, Name, DeanId) Values (3, 'Linguistics', 13);
Insert into Faculties (Building, Name, DeanId) Values (4, 'Art', 14);
Insert into Faculties (Building, Name, DeanId) Values (5, 'Music', 15);
Insert into Faculties (Building, Name, DeanId) Values (1, 'Astronomy', 16);
Insert into Faculties (Building, Name, DeanId) Values (2, 'Geography', 17);
Insert into Faculties (Building, Name, DeanId) Values (3, 'Psychology', 18);
Insert into Faculties (Building, Name, DeanId) Values (4, 'Sociology', 19);
Insert into Faculties (Building, Name, DeanId) Values (5, 'Sports Science', 20);
select *
from Groups
-- Teachers
Insert into Teachers (Name, Surname) Values ('John', 'Doe');
Insert into Teachers (Name, Surname) Values ('Jane', 'Smith');
Insert into Teachers (Name, Surname) Values ('Michael', 'Brown');
Insert into Teachers (Name, Surname) Values ('Emily', 'Johnson');
Insert into Teachers (Name, Surname) Values ('Robert', 'Williams');
Insert into Teachers (Name, Surname) Values ('Jessica', 'Jones');
Insert into Teachers (Name, Surname) Values ('David', 'Garcia');
Insert into Teachers (Name, Surname) Values ('Sarah', 'Martinez');
Insert into Teachers (Name, Surname) Values ('William', 'Davis');
Insert into Teachers (Name, Surname) Values ('Ashley', 'Rodriguez');
Insert into Teachers (Name, Surname) Values ('James', 'Lopez');
Insert into Teachers (Name, Surname) Values ('Linda', 'Hernandez');
Insert into Teachers (Name, Surname) Values ('Daniel', 'Gonzalez');
Insert into Teachers (Name, Surname) Values ('Patricia', 'Wilson');
Insert into Teachers (Name, Surname) Values ('Christopher', 'Anderson');
Insert into Teachers (Name, Surname) Values ('Barbara', 'Thomas');
Insert into Teachers (Name, Surname) Values ('Matthew', 'Taylor');
Insert into Teachers (Name, Surname) Values ('Elizabeth', 'Moore');
Insert into Teachers (Name, Surname) Values ('Joshua', 'Jackson');
Insert into Teachers (Name, Surname) Values ('Susan', 'White');


insert into Groups (Name, [Year], DepartmentId) values ('Group Al', 5, 21);
insert into Groups (Name, [Year], DepartmentId) values ('Group Beta', 5, 22);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ga', 5, 23);
insert into Groups (Name, [Year], DepartmentId) values ('Group De', 5, 24);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ep', 5, 25);
insert into Groups (Name, [Year], DepartmentId) values ('Group Zeta', 5, 26);
insert into Groups (Name, [Year], DepartmentId) values ('Group Eta', 5, 27);
insert into Groups (Name, [Year], DepartmentId) values ('Group Th', 5, 27);
insert into Groups (Name, [Year], DepartmentId) values ('Group Iota', 5, 28);
insert into Groups (Name, [Year], DepartmentId) values ('Group Ka', 5, 29);
insert into Groups (Name, [Year], DepartmentId) values ('Group La', 1, 30);
insert into Groups (Name, [Year], DepartmentId) values ('Group Mu', 2, 31);
insert into Groups (Name, [Year], DepartmentId) values ('Group Nu', 3, 32);
insert into Groups (Name, [Year], DepartmentId) values ('Group Xi', 4, 33);
insert into Groups (Name, [Year], DepartmentId) values ('Group Om', 5, 34);
insert into Groups (Name, [Year], DepartmentId) values ('Group Pi', 5, 35);
insert into Groups (Name, [Year], DepartmentId) values ('Group Rho', 2, 36);
insert into Groups (Name, [Year], DepartmentId) values ('Group Si', 3, 37);
insert into Groups (Name, [Year], DepartmentId) values ('Group Tau', 4, 38);
insert into Groups (Name, [Year], DepartmentId) values ('Group Up', 5, 39);

select *
from Groups


-- Deans
Insert into Deans (TeacherId) Values (1);
Insert into Deans (TeacherId) Values (2);
Insert into Deans (TeacherId) Values (3);
Insert into Deans (TeacherId) Values (4);
Insert into Deans (TeacherId) Values (5);
Insert into Deans (TeacherId) Values (6);
Insert into Deans (TeacherId) Values (7);
Insert into Deans (TeacherId) Values (8);
Insert into Deans (TeacherId) Values (9);
Insert into Deans (TeacherId) Values (10);
Insert into Deans (TeacherId) Values (11);
Insert into Deans (TeacherId) Values (12);
Insert into Deans (TeacherId) Values (13);
Insert into Deans (TeacherId) Values (14);
Insert into Deans (TeacherId) Values (15);
Insert into Deans (TeacherId) Values (16);
Insert into Deans (TeacherId) Values (17);
Insert into Deans (TeacherId) Values (18);
Insert into Deans (TeacherId) Values (19);
Insert into Deans (TeacherId) Values (20);

-- Departments
Insert into Departments (Building, Name, FacultyId, HeadId) Values (1, 'Computer Science', 65, 1);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (2, 'Mathematics', 66, 2);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (3, 'Physics', 67, 3);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (4, 'Biology', 68, 4);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (5, 'Chemistry', 69, 5);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (1, 'History', 70, 6);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (2, 'Philosophy', 71, 7);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (3, 'Engineering', 72, 8);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (4, 'Medicine', 73, 9);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (5, 'Law', 74, 10);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (1, 'Economics', 75, 11);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (2, 'Political Science', 76, 12);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (3, 'Linguistics', 77, 13);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (4, 'Art', 78, 14);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (5, 'Music', 79, 15);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (1, 'Astronomy', 80, 16);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (2, 'Geography', 75, 17);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (3, 'Psychology', 80, 18);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (4, 'Sociology', 66, 19);
Insert into Departments (Building, Name, FacultyId, HeadId) Values (5, 'Sports Science', 72, 20);


-- Heads
Insert into Heads (TeacherId) Values (1);
Insert into Heads (TeacherId) Values (2);
Insert into Heads (TeacherId) Values (3);
Insert into Heads (TeacherId) Values (4);
Insert into Heads (TeacherId) Values (5);
Insert into Heads (TeacherId) Values (6);
Insert into Heads (TeacherId) Values (7);
Insert into Heads (TeacherId) Values (8);
Insert into Heads (TeacherId) Values (9);
Insert into Heads (TeacherId) Values (10);
Insert into Heads (TeacherId) Values (11);
Insert into Heads (TeacherId) Values (12);
Insert into Heads (TeacherId) Values (13);
Insert into Heads (TeacherId) Values (14);
Insert into Heads (TeacherId) Values (15);
Insert into Heads (TeacherId) Values (16);
Insert into Heads (TeacherId) Values (17);
Insert into Heads (TeacherId) Values (18);
Insert into Heads (TeacherId) Values (19);
Insert into Heads (TeacherId) Values (20);

-- LectureRooms
Insert into LectureRooms (Building, Name) Values (1, 'Room A');
Insert into LectureRooms (Building, Name) Values (2, 'Room B');
Insert into LectureRooms (Building, Name) Values (3, 'Room C');
Insert into LectureRooms (Building, Name) Values (4, 'Room D');
Insert into LectureRooms (Building, Name) Values (5, 'Room E');
Insert into LectureRooms (Building, Name) Values (1, 'Room F');
Insert into LectureRooms (Building, Name) Values (2, 'Room G');
Insert into LectureRooms (Building, Name) Values (3, 'Room H');
Insert into LectureRooms (Building, Name) Values (4, 'Room I');
Insert into LectureRooms (Building, Name) Values (5, 'Room J');
Insert into LectureRooms (Building, Name) Values (1, 'Room K');
Insert into LectureRooms (Building, Name) Values (2, 'Room L');
Insert into LectureRooms (Building, Name) Values (3, 'Room M');
Insert into LectureRooms (Building, Name) Values (4, 'Room N');
Insert into LectureRooms (Building, Name) Values (5, 'Room O');
Insert into LectureRooms (Building, Name) Values (1, 'Room P');
Insert into LectureRooms (Building, Name) Values (2, 'Room Q');
Insert into LectureRooms (Building, Name) Values (3, 'Room R');
Insert into LectureRooms (Building, Name) Values (4, 'Room S');
Insert into LectureRooms (Building, Name) Values (5, 'Room T');


Insert into Assistants (TeacherId) Values (5);
Insert into Assistants (TeacherId) Values (12);
Insert into Assistants (TeacherId) Values (8);
Insert into Assistants (TeacherId) Values (22);
Insert into Assistants (TeacherId) Values (31);
Insert into Assistants (TeacherId) Values (14);
Insert into Assistants (TeacherId) Values (27);
Insert into Assistants (TeacherId) Values (35);
Insert into Assistants (TeacherId) Values (40);
Insert into Assistants (TeacherId) Values (19);
Insert into Assistants (TeacherId) Values (6);
Insert into Assistants (TeacherId) Values (24);
Insert into Assistants (TeacherId) Values (33);
Insert into Assistants (TeacherId) Values (10);
Insert into Assistants (TeacherId) Values (38);
Insert into Assistants (TeacherId) Values (16);
Insert into Assistants (TeacherId) Values (30);
Insert into Assistants (TeacherId) Values (3);
Insert into Assistants (TeacherId) Values (21);
Insert into Assistants (TeacherId) Values (29);


Insert into Curators (TeacherId) Values (2);
Insert into Curators (TeacherId) Values (5);
Insert into Curators (TeacherId) Values (8);
Insert into Curators (TeacherId) Values (11);
Insert into Curators (TeacherId) Values (14);
Insert into Curators (TeacherId) Values (17);
Insert into Curators (TeacherId) Values (20);
Insert into Curators (TeacherId) Values (14);
Insert into Curators (TeacherId) Values (16);
Insert into Curators (TeacherId) Values (19);
Insert into Curators (TeacherId) Values (3);
Insert into Curators (TeacherId) Values (6);
Insert into Curators (TeacherId) Values (9);
Insert into Curators (TeacherId) Values (12);
Insert into Curators (TeacherId) Values (15);
Insert into Curators (TeacherId) Values (18);
Insert into Curators (TeacherId) Values (11);
Insert into Curators (TeacherId) Values (14);
Insert into Curators (TeacherId) Values (17);
Insert into Curators (TeacherId) Values (13);



insert into GroupsCurators (CuratorId, GroupId) values (6, 43);
insert into GroupsCurators (CuratorId, GroupId) values (8, 52);
insert into GroupsCurators (CuratorId, GroupId) values (16, 43);
insert into GroupsCurators (CuratorId, GroupId) values (6, 59);
insert into GroupsCurators (CuratorId, GroupId) values (11, 50);
insert into GroupsCurators (CuratorId, GroupId) values (12, 58);
insert into GroupsCurators (CuratorId, GroupId) values (14, 55);
insert into GroupsCurators (CuratorId, GroupId) values (3, 44);
insert into GroupsCurators (CuratorId, GroupId) values (12, 45);
insert into GroupsCurators (CuratorId, GroupId) values (6, 41);
insert into GroupsCurators (CuratorId, GroupId) values (3, 60);
insert into GroupsCurators (CuratorId, GroupId) values (5, 58);
insert into GroupsCurators (CuratorId, GroupId) values (16, 60);
insert into GroupsCurators (CuratorId, GroupId) values (10, 54);
insert into GroupsCurators (CuratorId, GroupId) values (5, 45);
insert into GroupsCurators (CuratorId, GroupId) values (8, 48);
insert into GroupsCurators (CuratorId, GroupId) values (6, 42);
insert into GroupsCurators (CuratorId, GroupId) values (18, 60);
insert into GroupsCurators (CuratorId, GroupId) values (14, 44);
insert into GroupsCurators (CuratorId, GroupId) values (8, 53);
insert into GroupsCurators (CuratorId, GroupId) values (16, 42);
insert into GroupsCurators (CuratorId, GroupId) values (4, 52);
insert into GroupsCurators (CuratorId, GroupId) values (2, 50);
insert into GroupsCurators (CuratorId, GroupId) values (7, 55);
insert into GroupsCurators (CuratorId, GroupId) values (15, 46);
insert into GroupsCurators (CuratorId, GroupId) values (8, 48);
insert into GroupsCurators (CuratorId, GroupId) values (7, 60);
insert into GroupsCurators (CuratorId, GroupId) values (11, 50);
insert into GroupsCurators (CuratorId, GroupId) values (2, 49);
insert into GroupsCurators (CuratorId, GroupId) values (11, 52);


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



insert into Lectures (SubjectId, TeacherId) values (18, 14);
insert into Lectures (SubjectId, TeacherId) values (10, 35);
insert into Lectures (SubjectId, TeacherId) values (12, 9);
insert into Lectures (SubjectId, TeacherId) values (11, 3);
insert into Lectures (SubjectId, TeacherId) values (12, 1);
insert into Lectures (SubjectId, TeacherId) values (13, 23);
insert into Lectures (SubjectId, TeacherId) values (10, 5);
insert into Lectures (SubjectId, TeacherId) values (13, 7);
insert into Lectures (SubjectId, TeacherId) values (11, 7);
insert into Lectures (SubjectId, TeacherId) values (16, 26);
insert into Lectures (SubjectId, TeacherId) values (13, 31);
insert into Lectures (SubjectId, TeacherId) values (19, 4);
insert into Lectures (SubjectId, TeacherId) values (1, 3);
insert into Lectures (SubjectId, TeacherId) values (1, 16);
insert into Lectures (SubjectId, TeacherId) values (18, 35);
insert into Lectures (SubjectId, TeacherId) values (20, 23);
insert into Lectures (SubjectId, TeacherId) values (15, 2);
insert into Lectures (SubjectId, TeacherId) values (20, 30);
insert into Lectures (SubjectId, TeacherId) values (2, 5);
insert into Lectures (SubjectId, TeacherId) values (13, 10);
insert into Lectures (SubjectId, TeacherId) values (8, 3);
insert into Lectures (SubjectId, TeacherId) values (10, 15);
insert into Lectures (SubjectId, TeacherId) values (10, 3);
insert into Lectures (SubjectId, TeacherId) values (15, 23);
insert into Lectures (SubjectId, TeacherId) values (20, 31);
insert into Lectures (SubjectId, TeacherId) values (6, 9);
insert into Lectures (SubjectId, TeacherId) values (19, 39);
insert into Lectures (SubjectId, TeacherId) values (2, 28);
insert into Lectures (SubjectId, TeacherId) values (6, 14);
insert into Lectures (SubjectId, TeacherId) values (14, 5);
select *
from Lectures


insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 1, 17, 39, 17);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (4, 1, 18, 41, 10);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (6, 6, 36, 36, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (3, 6, 9, 40, 16);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 5, 3, 45, 13);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 6, 36, 37, 13);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (2, 5, 50, 35, 6);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 5, 11, 44, 1);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (7, 6, 32, 37, 3);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 5, 48, 37, 2);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (1, 1, 15, 36, 8);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (3, 5, 18, 37, 11);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (7, 1, 8, 40, 20);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 1, 40, 42, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (1, 5, 12, 43, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (7, 3, 6, 41, 2);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (6, 3, 34, 32, 17);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 5, 51, 45, 1);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (2, 5, 33, 41, 14);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 5, 39, 31, 10);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (3, 2, 16, 45, 17);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 4, 51, 41, 9);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (7, 5, 1, 43, 17);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (4, 4, 51, 40, 7);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (1, 5, 19, 40, 16);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (6, 6, 11, 38, 15);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (1, 3, 31, 45, 13);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (1, 1, 21, 36, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 5, 37, 45, 10);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (6, 1, 50, 43, 11);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (2, 6, 3, 44, 2);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (2, 5, 15, 31, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (3, 3, 8, 36, 19);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (3, 1, 20, 34, 9);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (7, 1, 13, 39, 11);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 4, 25, 37, 7);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 4, 50, 41, 19);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 4, 46, 42, 5);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (5, 6, 44, 42, 13);
insert into Schedules (Class, [DayOfWeek], [Week], LectureId, LectureRoomId) values (8, 3, 16, 37, 12);


insert into GroupsLectures (LectureId, GroupId) values (34, 58);
insert into GroupsLectures (LectureId, GroupId) values (45, 45);
insert into GroupsLectures (LectureId, GroupId) values (43, 43);
insert into GroupsLectures (LectureId, GroupId) values (41, 59);
insert into GroupsLectures (LectureId, GroupId) values (40, 50);
insert into GroupsLectures (LectureId, GroupId) values (35, 46);
insert into GroupsLectures (LectureId, GroupId) values (34, 52);
insert into GroupsLectures (LectureId, GroupId) values (36, 43);
insert into GroupsLectures (LectureId, GroupId) values (45, 50);
insert into GroupsLectures (LectureId, GroupId) values (34, 54);
insert into GroupsLectures (LectureId, GroupId) values (41, 55);
insert into GroupsLectures (LectureId, GroupId) values (40, 50);
insert into GroupsLectures (LectureId, GroupId) values (37, 58);
insert into GroupsLectures (LectureId, GroupId) values (40, 43);
insert into GroupsLectures (LectureId, GroupId) values (42, 41);
insert into GroupsLectures (LectureId, GroupId) values (34, 42);
insert into GroupsLectures (LectureId, GroupId) values (35, 43);
insert into GroupsLectures (LectureId, GroupId) values (43, 58);
insert into GroupsLectures (LectureId, GroupId) values (35, 59);
insert into GroupsLectures (LectureId, GroupId) values (44, 52);



--------------------Tasks-------------------
select distinct lr.name
from teachers t
join lectures l on t.id = l.teacherid
join schedules s on l.id = s.lectureid
join lecturerooms lr on s.lectureroomid = lr.id
where t.name = 'Edward' and t.surname = 'Hopper';

select distinct t.surname
from teachers t
join assistants a on t.id = a.teacherid
join lectures l on t.id = l.teacherid
join groupslectures gl on l.id = gl.lectureid
join groups g on gl.groupid = g.id
where g.name = 'F505';

select distinct s.name
from teachers t
join lectures l on t.id = l.teacherid
join subjects s on l.subjectid = s.id
join groupslectures gl on l.id = gl.lectureid
join groups g on gl.groupid = g.id
where t.name = 'Alex' and t.surname = 'Carmack' and g.year = 5;

select distinct t.surname
from teachers t
join lectures l on t.id = l.teacherid
join schedules s on l.id = s.lectureid
where s.[dayofweek] != 1;

select lr.name, lr.building
from lecturerooms lr
where not exists (
    select 1
    from schedules s
    join lectures l on s.lectureid = l.id
    where s.lectureroomid = lr.id and s.[dayofweek] = 3 and s.week = 2 and s.class = 3
);

select t.name + ' ' + t.surname as full_name
from teachers t
join departments d on t.id = d.headid
join faculties f on d.facultyid = f.id
join groups g on d.id = g.departmentid
join groupscurators gc on g.id = gc.groupid
join curators c on gc.curatorid = c.id
where f.name = 'Computer Science' and not exists (
    select 1
    from departments d2
    join faculties f2 on d2.facultyid = f2.id
    where f2.name = 'Software Development' and d2.id = g.departmentid
);

select distinct building
from departments
union
select distinct building
from faculties
union
select distinct building
from lecturerooms;

select t.name + ' ' + t.surname as full_name
from teachers t
join deans d on t.id = d.teacherid
union
select t.name + ' ' + t.surname as full_name
from teachers t
join heads h on t.id = h.teacherid
union
select t.name + ' ' + t.surname as full_name
from teachers t
join lectures l on t.id = l.teacherid
union
select t.name + ' ' + t.surname as full_name
from teachers t
join curators c on t.id = c.teacherid
union
select t.name + ' ' + t.surname as full_name
from teachers t
join assistants a on t.id = a.teacherid;

select distinct s.[dayofweek]
from schedules s
join lecturerooms lr on s.lectureroomid = lr.id
where (lr.name = 'A311' or lr.name = 'A104') and lr.building = 1;
