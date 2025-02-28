-- Створення бази даних
create database PD422_Triggers;
use PD422_Triggers;

-- Створення таблиць
create table Students
(
    StudentID int identity(1,1) primary key,
    Name nvarchar(100),
    Surname nvarchar(100),
    Email nvarchar(100),
    Phone nvarchar(20) null
);

create table Teachers
(
    TeacherID int identity(1,1) primary key,
    Name nvarchar(100),
    Surname nvarchar(100),
    Email nvarchar(100),
    Salary decimal(10,2)
);

create table Subjects
(
    SubjectID int identity(1,1) primary key,
    Name nvarchar(100)
);

create table TeachersSubjects
(
    TeacherID int,
    SubjectID int,
    foreign key (TeacherID) references Teachers(TeacherID),
    foreign key (SubjectID) references Subjects(SubjectID)
);

create table Groups
(
    GroupID int identity(1,1) primary key,
    Name nvarchar(100),
    Course int,
    Department nvarchar(100)
);

create table StudentSubjects
(
    StudentID int,
    SubjectID int,
    foreign key (StudentID) references Students(StudentID),
    foreign key (SubjectID) references Subjects(SubjectID)
);

-- Логування студентів
create table StudentsLog
(
    StudentID int,
    Name nvarchar(100),
    Surname nvarchar(100),
    Email nvarchar(100),
    AddedAt datetime
);

create trigger trg_InsertStudent
on Students
after insert
as
begin
    insert into StudentsLog (StudentID, Name, Surname, Email, AddedAt)
    select StudentID, Name, Surname, Email, GETDATE()
    from inserted;
end;

-- Заборона видалення викладачів
create trigger trg_PreventTeacherDelete
on Teachers
before delete
as
begin
    if exists (select 1 from TeachersSubjects where TeacherID in (select TeacherID from deleted))
    begin
        raiserror('Не можна видалити викладача, який викладає предмети.', 16, 1);
        rollback transaction;
    end
end;

-- Автоматичне присвоєння номера телефону "UNKNOWN" для студентів
create trigger trg_SetUnknownPhone
on Students
after insert
as
begin
    update Students
    set Phone = 'UNKNOWN'
    where Phone is null and StudentID in (select StudentID from inserted);
end;

-- Логування змін у назвах груп
create table GroupsLog
(
    GroupID int,
    OldName nvarchar(100),
    NewName nvarchar(100),
    UpdatedAt datetime
);

create trigger trg_UpdateGroupName
on Groups
after update
as
begin
    insert into GroupsLog (GroupID, OldName, NewName, UpdatedAt)
    select d.GroupID, d.Name, i.Name, GETDATE()
    from deleted d
    join inserted i on d.GroupID = i.GroupID
    where d.Name != i.Name;
end;

-- Обмеження на оновлення зарплати викладача
create trigger trg_CheckSalaryUpdate
on Teachers
after update
as
begin
    if exists (select 1 from inserted where Salary < 5000)
    begin
        raiserror('Зарплата викладача не може бути нижче 5000.', 16, 1);
        rollback transaction;
    end
end;

-- Автоматичне видалення студента з усіх предметів після видалення
create trigger trg_DeleteStudentSubjects
on Students
after delete
as
begin
    delete from StudentSubjects
    where StudentID in (select StudentID from deleted);
end;

-- Автоматичне присвоєння предметів новому викладачеві
create trigger trg_AssignSubjectToFirstTeacher
on Teachers
after insert
as
begin
    if (select count(*) from Teachers) = 1
    begin
        declare @TeacherID int;
        select @TeacherID = TeacherID from inserted;

        -- Призначення першого предмету новому викладачеві
        insert into TeachersSubjects (TeacherID, SubjectID)
        select @TeacherID, SubjectID from Subjects where SubjectID = 1;
    end
end;

-- Логування видалення предметів
create table SubjectsLog
(
    SubjectID int,
    Name nvarchar(100),
    DeletedAt datetime
);

create trigger trg_DeleteSubjectLog
on Subjects
after delete
as
begin
    insert into SubjectsLog (SubjectID, Name, DeletedAt)
    select SubjectID, Name, GETDATE()
    from deleted;
end;

-- Автоматичне збереження старих email'ів викладачів
create table EmailChanges
(
    TeacherID int,
    OldEmail nvarchar(100),
    NewEmail nvarchar(100),
    ChangedAt datetime
);

create trigger trg_UpdateTeacherEmail
on Teachers
after update
as
begin
    if exists (select 1 from inserted i join deleted d on i.TeacherID = d.TeacherID where i.Email != d.Email)
    begin
        insert into EmailChanges (TeacherID, OldEmail, NewEmail, ChangedAt)
        select d.TeacherID, d.Email, i.Email, GETDATE()
        from deleted d
        join inserted i on d.TeacherID = i.TeacherID
        where d.Email != i.Email;
    end
end;

-- Автоматичне оновлення курсу групи
create trigger trg_UpdateGroupCourse
on Groups
after update
as
begin
    if datepart(month, getdate()) = 1 and datepart(day, getdate()) = 1
    begin
        update Groups
        set Course = Course + 1
        where Course != (select Course from inserted where GroupID = inserted.GroupID);
    end
end;
