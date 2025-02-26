create database Bookstore
go
use Bookstore
go
create table Authors
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''),
Surname nvarchar(max) not null check(Surname<>''),
CountryId int not null foreign key references Countries(Id) 
)
go
insert into Authors (Name, Surname, CountryId) values ('John', 'Smith', 12);
insert into Authors (Name, Surname, CountryId) values ('Emily', 'Johnson', 25);
insert into Authors (Name, Surname, CountryId) values ('Michael', 'Williams', 8);
insert into Authors (Name, Surname, CountryId) values ('Sarah', 'Brown', 40);
insert into Authors (Name, Surname, CountryId) values ('David', 'Jones', 3);
insert into Authors (Name, Surname, CountryId) values ('Emma', 'Garcia', 15);
insert into Authors (Name, Surname, CountryId) values ('Daniel', 'Martinez', 48);
insert into Authors (Name, Surname, CountryId) values ('Olivia', 'Rodriguez', 22);
insert into Authors (Name, Surname, CountryId) values ('James', 'Lopez', 37);
insert into Authors (Name, Surname, CountryId) values ('Sophia', 'Gonzalez', 5);
insert into Authors (Name, Surname, CountryId) values ('Benjamin', 'Wilson', 50);
insert into Authors (Name, Surname, CountryId) values ('Isabella', 'Anderson', 9);
insert into Authors (Name, Surname, CountryId) values ('Alexander', 'Thomas', 33);
insert into Authors (Name, Surname, CountryId) values ('Charlotte', 'Taylor', 19);
insert into Authors (Name, Surname, CountryId) values ('Ethan', 'Harris', 44);
insert into Authors (Name, Surname, CountryId) values ('Mia', 'Clark', 2);
insert into Authors (Name, Surname, CountryId) values ('William', 'Lewis', 51);
insert into Authors (Name, Surname, CountryId) values ('Amelia', 'Walker', 7);
insert into Authors (Name, Surname, CountryId) values ('Henry', 'Allen', 28);
insert into Authors (Name, Surname, CountryId) values ('Evelyn', 'Young', 43);
insert into Authors (Name, Surname, CountryId) values ('Lucas', 'King', 20);
insert into Authors (Name, Surname, CountryId) values ('Harper', 'Wright', 38);
insert into Authors (Name, Surname, CountryId) values ('Mason', 'Scott', 4);
insert into Authors (Name, Surname, CountryId) values ('Liam', 'Green', 36);
insert into Authors (Name, Surname, CountryId) values ('Ava', 'Baker', 11);
insert into Authors (Name, Surname, CountryId) values ('Noah', 'Adams', 47);
insert into Authors (Name, Surname, CountryId) values ('Ella', 'Nelson', 30);
insert into Authors (Name, Surname, CountryId) values ('Logan', 'Carter', 6);
insert into Authors (Name, Surname, CountryId) values ('Lily', 'Mitchell', 41);
insert into Authors (Name, Surname, CountryId) values ('Sebastian', 'Perez', 13);
insert into Authors (Name, Surname, CountryId) values ('Grace', 'Roberts', 34);
insert into Authors (Name, Surname, CountryId) values ('Samuel', 'Turner', 23);
insert into Authors (Name, Surname, CountryId) values ('Zoe', 'Phillips', 45);
insert into Authors (Name, Surname, CountryId) values ('Matthew', 'Campbell', 16);
insert into Authors (Name, Surname, CountryId) values ('Hannah', 'Parker', 39);
insert into Authors (Name, Surname, CountryId) values ('Joseph', 'Evans', 52);
insert into Authors (Name, Surname, CountryId) values ('Victoria', 'Edwards', 26);
insert into Authors (Name, Surname, CountryId) values ('Anthony', 'Collins', 14);
insert into Authors (Name, Surname, CountryId) values ('Madison', 'Stewart', 49);
insert into Authors (Name, Surname, CountryId) values ('Dylan', 'Sanchez', 17);
insert into Authors (Name, Surname, CountryId) values ('Layla', 'Morris', 1);
insert into Authors (Name, Surname, CountryId) values ('Nathan', 'Rogers', 55);
insert into Authors (Name, Surname, CountryId) values ('Chloe', 'Reed', 29);
insert into Authors (Name, Surname, CountryId) values ('Andrew', 'Cook', 21);
insert into Authors (Name, Surname, CountryId) values ('Scarlett', 'Morgan', 10);
insert into Authors (Name, Surname, CountryId) values ('Brandon', 'Bell', 31);
insert into Authors (Name, Surname, CountryId) values ('Sofia', 'Murphy', 32);
insert into Authors (Name, Surname, CountryId) values ('Kevin', 'Bailey', 53);
insert into Authors (Name, Surname, CountryId) values ('Aurora', 'Rivera', 42);
insert into Authors (Name, Surname, CountryId) values ('Jack', 'Foster', 18);
insert into Authors (Name, Surname, CountryId) values ('Penelope', 'Hudson', 27);
insert into Authors (Name, Surname, CountryId) values ('Ryan', 'Howard', 35);
insert into Authors (Name, Surname, CountryId) values ('Samantha', 'Diaz', 46);
insert into Authors (Name, Surname, CountryId) values ('Adam', 'Bryant', 24);
insert into Authors (Name, Surname, CountryId) values ('Julia', 'Sullivan', 54);
insert into Authors (Name, Surname, CountryId) values ('Patrick', 'Hughes', 12);
insert into Authors (Name, Surname, CountryId) values ('Laura', 'Fleming', 22);
insert into Authors (Name, Surname, CountryId) values ('Henry', 'Palmer', 7);
insert into Authors (Name, Surname, CountryId) values ('Isabel', 'Newton', 33);
insert into Authors (Name, Surname, CountryId) values ('Robert', 'Griffin', 44);
insert into Authors (Name, Surname, CountryId) values ('Sophia', 'Russell', 5);
insert into Authors (Name, Surname, CountryId) values ('Ethan', 'Murray', 51);
insert into Authors (Name, Surname, CountryId) values ('Olivia', 'Harrison', 9);
insert into Authors (Name, Surname, CountryId) values ('Jacob', 'Hart', 19);
insert into Authors (Name, Surname, CountryId) values ('Emily', 'Fox', 42);
insert into Authors (Name, Surname, CountryId) values ('Daniel', 'Hunter', 30);
insert into Authors (Name, Surname, CountryId) values ('Amelia', 'Wood', 2);
insert into Authors (Name, Surname, CountryId) values ('Mason', 'Cole', 27);
insert into Authors (Name, Surname, CountryId) values ('Emma', 'Bennett', 39);
insert into Authors (Name, Surname, CountryId) values ('Lucas', 'Wells', 17);
insert into Authors (Name, Surname, CountryId) values ('Scarlett', 'Patterson', 3);
insert into Authors (Name, Surname, CountryId) values ('Gabriel', 'Barnes', 35);
insert into Authors (Name, Surname, CountryId) values ('Madeline', 'Fisher', 14);
insert into Authors (Name, Surname, CountryId) values ('Owen', 'Chapman', 8);
insert into Authors (Name, Surname, CountryId) values ('Zoe', 'Gray', 24);
insert into Authors (Name, Surname, CountryId) values ('Liam', 'Ward', 11);
insert into Authors (Name, Surname, CountryId) values ('Ava', 'Simmons', 45);
insert into Authors (Name, Surname, CountryId) values ('Noah', 'Sanders', 20);
insert into Authors (Name, Surname, CountryId) values ('Hannah', 'Cox', 48);
insert into Authors (Name, Surname, CountryId) values ('Evan', 'Jenkins', 29);
insert into Authors (Name, Surname, CountryId) values ('Layla', 'Reed', 15);
insert into Authors (Name, Surname, CountryId) values ('Nathan', 'Wallace', 37);
insert into Authors (Name, Surname, CountryId) values ('Victoria', 'West', 6);
insert into Authors (Name, Surname, CountryId) values ('Andrew', 'Rose', 52);
insert into Authors (Name, Surname, CountryId) values ('Lily', 'Riley', 16);
insert into Authors (Name, Surname, CountryId) values ('James', 'Stevens', 50);
insert into Authors (Name, Surname, CountryId) values ('Sofia', 'Price', 32);
insert into Authors (Name, Surname, CountryId) values ('Dylan', 'Howard', 4);
insert into Authors (Name, Surname, CountryId) values ('Aurora', 'Long', 46);
insert into Authors (Name, Surname, CountryId) values ('Adam', 'Butler', 31);
insert into Authors (Name, Surname, CountryId) values ('Grace', 'Ramirez', 41);
insert into Authors (Name, Surname, CountryId) values ('Joseph', 'Powell', 10);
insert into Authors (Name, Surname, CountryId) values ('Eleanor', 'Bryant', 55);
insert into Authors (Name, Surname, CountryId) values ('Connor', 'Reeves', 18);
insert into Authors (Name, Surname, CountryId) values ('Charlotte', 'Fletcher', 43);
insert into Authors (Name, Surname, CountryId) values ('Landon', 'Hawkins', 26);
insert into Authors (Name, Surname, CountryId) values ('Evelyn', 'Berry', 1);
insert into Authors (Name, Surname, CountryId) values ('Miles', 'Hansen', 53);
insert into Authors (Name, Surname, CountryId) values ('Bella', 'Austin', 21);
insert into Authors (Name, Surname, CountryId) values ('Ryan', 'Lawson', 28);
insert into Authors (Name, Surname, CountryId) values ('Mila', 'Bryant', 13);
insert into Authors (Name, Surname, CountryId) values ('Julian', 'Vargas', 49);
insert into Authors (Name, Surname, CountryId) values ('Lucy', 'Richards', 36);
insert into Authors (Name, Surname, CountryId) values ('Nathaniel', 'Chavez', 34);
insert into Authors (Name, Surname, CountryId) values ('Addison', 'Snyder', 25);
insert into Authors (Name, Surname, CountryId) values ('David', 'Dixon', 47);
insert into Authors (Name, Surname, CountryId) values ('Peyton', 'Rhodes', 38);
insert into Authors (Name, Surname, CountryId) values ('Tristan', 'Huff', 23);
insert into Authors (Name, Surname, CountryId) values ('Sadie', 'Johnston', 40);
insert into Authors (Name, Surname, CountryId) values ('Caleb', 'Frost', 9);
insert into Authors (Name, Surname, CountryId) values ('Serena', 'Dalton', 42);
insert into Authors (Name, Surname, CountryId) values ('Victor', 'Galloway', 5);
insert into Authors (Name, Surname, CountryId) values ('Madison', 'Moses', 19);
insert into Authors (Name, Surname, CountryId) values ('Leo', 'Hester', 44);
insert into Authors (Name, Surname, CountryId) values ('Allison', 'Freeman', 12);
insert into Authors (Name, Surname, CountryId) values ('Joshua', 'Hampton', 27);
insert into Authors (Name, Surname, CountryId) values ('Caroline', 'Cameron', 2);
insert into Authors (Name, Surname, CountryId) values ('Sebastian', 'Benson', 30);
insert into Authors (Name, Surname, CountryId) values ('Hailey', 'Burgess', 31);
insert into Authors (Name, Surname, CountryId) values ('Michael', 'Owens', 3);
insert into Authors (Name, Surname, CountryId) values ('Daniela', 'Willis', 50);
insert into Authors (Name, Surname, CountryId) values ('Elliot', 'Marshall', 7);
insert into Authors (Name, Surname, CountryId) values ('Clara', 'Burnett', 22);
insert into Authors (Name, Surname, CountryId) values ('Jonathan', 'Hayes', 14);
insert into Authors (Name, Surname, CountryId) values ('Alice', 'Brock', 20);
insert into Authors (Name, Surname, CountryId) values ('Robert', 'Manning', 45);
insert into Authors (Name, Surname, CountryId) values ('Sophia', 'Perkins', 54);
insert into Authors (Name, Surname, CountryId) values ('Hudson', 'Mendez', 35);
insert into Authors (Name, Surname, CountryId) values ('Natalie', 'McBride', 16);
insert into Authors (Name, Surname, CountryId) values ('Elias', 'Swanson', 28);
insert into Authors (Name, Surname, CountryId) values ('Ruby', 'Gibson', 8);
insert into Authors (Name, Surname, CountryId) values ('Omar', 'Lopez', 6);
insert into Authors (Name, Surname, CountryId) values ('Isla', 'Nichols', 32);
insert into Authors (Name, Surname, CountryId) values ('Wyatt', 'Carson', 41);
insert into Authors (Name, Surname, CountryId) values ('Lucy', 'Blair', 15);

create table Books 
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''),
Pages int not null check(Pages!<0),
Price money not null check(Price!<0),
PublishDate date not null check(PublishDate !> getdate()),
AuthorId int not null foreign key references Authors(Id),
ThemeId int not null foreign key references Themes(Id)
)
go
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Microsoft Secrets', 320, 180.50, '2005-03-15', 10, 6);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Microsoft: A History of Innovation', 450, 230.99, '2010-10-01', 15, 3);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Mastering Microsoft Excel', 400, 150.00, '2012-07-21', 25, 8);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Inside Microsoft', 350, 200.25, '2008-04-10', 5, 14);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Microsoft: The Big Breakthrough', 300, 175.75, '2015-11-19', 7, 9);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Silent Observer', 250, 145.99, '1995-03-10', 5, 7);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Whispers in the Dark', 320, 210.50, '2001-06-15', 12, 3);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Echoes of Time', 180, 125.75, '2010-08-22', 18, 11);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Lost Legacy', 350, 200.00, '2005-12-01', 3, 14);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Final Hour', 280, 155.50, '2012-07-09', 23, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Unwritten Paths', 210, 120.99, '2000-10-13', 30, 15);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Boundless Sea', 300, 190.75, '1998-02-20', 7, 10);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Beyond the Horizon', 400, 380.00, '2007-05-30', 15, 17);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Fading Stars', 150, 60.00, '2020-11-05', 2, 12);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Shadows of the Past', 220, 150.25, '2015-09-16', 25, 9);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Whispers of the Wind', 330, 210.00, '2003-01-23', 10, 6);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Beneath the Surface', 190, 90.50, '2011-12-12', 50, 8);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Dark Reflections', 270, 180.99, '2018-04-18', 8, 19);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Into the Abyss', 320, 220.30, '2019-06-25', 3, 4);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Silent Tide', 210, 130.00, '2021-07-10', 18, 20);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Dark Depths', 180, 50.99, '2006-01-09', 12, 3);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Echoes of the Forgotten', 320, 250.00, '2010-10-17', 14, 11);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Waves of Change', 250, 175.99, '2007-11-23', 4, 1);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Ripples in the Water', 350, 300.99, '2014-02-14', 22, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Shattered World', 600, 400.99, '2020-06-14', 8, 16);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Lost in Time', 430, 175.00, '2018-03-01', 13, 9);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Through the Mist', 510, 250.75, '2017-10-23', 2, 12);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Silent Shadows', 370, 330.00, '2016-04-08', 27, 7);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Embers of the Past', 600, 350.50, '2009-02-02', 12, 11);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Fires of Destiny', 450, 400.00, '2021-09-10', 25, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Lost City', 350, 210.50, '2020-11-17', 7, 3);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Whispers of Eternity', 500, 280.00, '2015-05-09', 18, 10);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Red Dawn', 380, 320.25, '2022-08-03', 14, 16);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Fallen King', 270, 120.50, '2008-11-27', 30, 12);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Final Journey', 200, 75.99, '2023-03-15', 10, 4);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Tides of Fate', 350, 230.00, '2000-01-29', 1, 7);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Reflections of a Lost World', 400, 315.00, '2018-07-01', 20, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Ancient Map', 300, 210.00, '2011-03-12', 9, 15);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Edge of Tomorrow', 250, 145.75, '2022-12-20', 16, 12);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Heart of the Storm', 380, 175.99, '2007-02-25', 25, 8);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Beyond the Storm', 320, 190.50, '2020-04-10', 4, 10);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Echoes of a Silent World', 500, 270.00, '2021-01-19', 5, 17);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Winds Whisper', 450, 225.75, '2019-10-15', 7, 14);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Dreams of the Fallen', 300, 200.99, '2015-09-01', 8, 9);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Forgotten Kingdom', 270, 170.50, '2017-06-03', 10, 11);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Rift Between Worlds', 320, 210.25, '2015-05-02', 18, 6);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Last Dawn', 380, 270.75, '2023-02-08', 30, 16);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Forgotten Garden', 350, 250.00, '2002-03-16', 10, 13);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Ravens Curse', 280, 210.00, '2016-01-11', 5, 15);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Dark Forest', 310, 225.50, '2018-03-21', 6, 14);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The World Unseen', 400, 300.00, '2014-07-30', 11, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Last Emperor', 320, 190.99, '2022-02-19', 28, 19);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Storms of Destiny', 450, 350.00, '2017-05-14', 3, 20);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Voices from the Deep', 280, 175.00, '2021-04-01', 18, 8);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('A Journey Beyond', 350, 215.50, '2020-09-23', 12, 5);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('Nightfalls Embrace', 380, 290.00, '2022-01-16', 2, 6);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The World Behind', 500, 320.00, '2019-07-25', 1, 17);
insert into Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) values ('The Dawn of Tomorrow', 600, 400.50, '2018-11-09', 4, 11);

create table Countries
(
Id int not null identity(1, 1) primary key,
Name nvarchar(50) not null check(Name<>'') unique,
)
go
insert into Countries (Name) values ('Philippines');
insert into Countries (Name) values ('Brazil');
insert into Countries (Name) values ('New Zealand');
insert into Countries (Name) values ('Czech Republic');
insert into Countries (Name) values ('United States');
insert into Countries (Name) values ('Cuba');
insert into Countries (Name) values ('France');
insert into Countries (Name) values ('China');
insert into Countries (Name) values ('Nigeria');
insert into Countries (Name) values ('Bangladesh');
insert into Countries (Name) values ('Thailand');
insert into Countries (Name) values ('Cyprus');
insert into Countries (Name) values ('Japan');
insert into Countries (Name) values ('Afghanistan');
insert into Countries (Name) values ('Panama');
insert into Countries (Name) values ('Iran');
insert into Countries (Name) values ('Peru');
insert into Countries (Name) values ('Morocco');
insert into Countries (Name) values ('Albania');
insert into Countries (Name) values ('Democratic Republic of the Congo');
insert into Countries (Name) values ('Russia');
insert into Countries (Name) values ('Lithuania');
insert into Countries (Name) values ('Canada');
insert into Countries (Name) values ('Poland');
insert into Countries (Name) values ('Sweden');
insert into Countries (Name) values ('Colombia');
insert into Countries (Name) values ('Indonesia');
insert into Countries (Name) values ('Vietnam');
insert into Countries (Name) values ('Singapore');
insert into Countries (Name) values ('Honduras');
insert into Countries (Name) values ('Portugal');
insert into Countries (Name) values ('United Kingdom');
insert into Countries (Name) values ('South Africa');
insert into Countries (Name) values ('Ukraine');
insert into Countries (Name) values ('Italy');
insert into Countries (Name) values ('Mexico');
insert into Countries (Name) values ('Benin');
insert into Countries (Name) values ('Bosnia and Herzegovina');
insert into Countries (Name) values ('Nepal');
insert into Countries (Name) values ('Spain');
insert into Countries (Name) values ('Costa Rica');
insert into Countries (Name) values ('Macedonia');
insert into Countries (Name) values ('Pakistan');
insert into Countries (Name) values ('Venezuela');
insert into Countries (Name) values ('Argentina');
insert into Countries (Name) values ('Lebanon');
insert into Countries (Name) values ('Greece');
insert into Countries (Name) values ('Bulgaria');
insert into Countries (Name) values ('Guatemala');
insert into Countries (Name) values ('Norway');
insert into Countries (Name) values ('Switzerland');
insert into Countries (Name) values ('Ecuador');
insert into Countries (Name) values ('Saudi Arabia');
insert into Countries (Name) values ('Malaysia');
insert into Countries (Name) values ('South Korea');

select Id, Name
from Countries
create table Sales
(
Id int not null identity(1, 1) primary key,
Price money not null check(Price!<0),
Quantity int not null check(Quantity>=0),
SaleDate date not null check(SaleDate!>getdate()) default getdate(),
BookId int not null foreign key references Books(Id),
ShopId int not null foreign key references Shops(Id)
)
go

create table Shops
(
Id int not null identity(1, 1) primary key,
Name nvarchar(max) not null check(Name<>''), 
CountryId int not null foreign key references Countries(Id),
)
go


create table Themes
(
Id int not null identity(1, 1) primary key,
Name nvarchar(100) not null check(Name<>'') unique
)
go
insert into Themes (Name) values ('Fantasy');
insert into Themes (Name) values ('Science Fiction');
insert into Themes (Name) values ('Mystery');
insert into Themes (Name) values ('Thriller');
insert into Themes (Name) values ('Horror');
insert into Themes (Name) values ('Romance');
insert into Themes (Name) values ('Drama');
insert into Themes (Name) values ('Adventure');
insert into Themes (Name) values ('Historical Fiction');
insert into Themes (Name) values ('Dystopian');
insert into Themes (Name) values ('Cyberpunk');
insert into Themes (Name) values ('Steampunk');
insert into Themes (Name) values ('Post-Apocalyptic');
insert into Themes (Name) values ('Psychological Thriller');
insert into Themes (Name) values ('Gothic Fiction');
insert into Themes (Name) values ('Espionage');
insert into Themes (Name) values ('Dark Fantasy');
insert into Themes (Name) values ('Supernatural');
insert into Themes (Name) values ('Crime Fiction');
insert into Themes (Name) values ('Magical Realism');


select Id, Name
from Themes
order by Id
---------------------------------------Tasks-------------------------------------
--Task 1
select Name, Pages, Price, PublishDate
from Books
where Pages between 500 and 650
--Task 2
select Name, Pages, Price, PublishDate
from Books
where Name like 'A%' or Name like 'Z%'
--Task 3
select b.Name, b.Pages, b.Price, b.PublishDate 
from Books as b, Sales as s
where ThemeId = 19 and s.Quantity > 30
--Task 4
select Name, Pages, Price, PublishDate
from Books
where Name 
--Task 5
select b.Name + b.Pages +  b.Price + b.PublishDate + au.Name + au.Surname as [FullData]
from Books as b, Authors as au
where Price < 50.00
--Task 6
select Name, Pages, Price, PublishDate
from Books
where len(Name) = 4
--Task 7
select b.Name, t.Name, a.Name, s.Price, s.Quantity, st.Name
from Books as b, Themes as t, Authors as a, Sales as s, Shops as st
where b.Name not like '%a%'
and t.Name != 'Drama'
and a.Name  != 'Herbert Schildt'
and s.Price between 60 and 80
and s.Quantity >= 8
and st.CountryId != 34 and st.CountryId != 21
--Task 8
select count(a.Id) as Author_Count, count(b.Id) as 
