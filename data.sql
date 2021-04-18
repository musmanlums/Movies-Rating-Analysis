drop table if exists Movie;
drop table if exists Rating;
drop table if exists Reviewer;

create table Movie(mID integer, title varchar(100), year integer, director varchar(100));
create table Reviewer(rID integer, name varchar(100));
create table Rating(rID integer, mID integer, stars integer, ratingDate date);

insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');

insert into Rating values(201, 101, 2, date_format('2012-01-22','%Y-%m-%d'));
insert into Rating values(201, 101, 4, date_format('2013-01-27','%Y-%m-%d'));
insert into Rating values(202, 106, 4, null);
insert into Rating values(203, 103, 2, date_format('2008-01-20','%Y-%m-%d'));
insert into Rating values(203, 108, 4, date_format('2002-01-12','%Y-%m-%d'));
insert into Rating values(203, 108, 2, date_format('2009-01-30','%Y-%m-%d'));
insert into Rating values(204, 101, 3, date_format('2010-01-09','%Y-%m-%d'));
insert into Rating values(205, 103, 3, date_format('2010-01-27','%Y-%m-%d'));
insert into Rating values(205, 104, 2, date_format('2010-01-22','%Y-%m-%d'));
insert into Rating values(205, 108, 4, null);
insert into Rating values(206, 107, 3, date_format('2013-01-15','%Y-%m-%d'));
insert into Rating values(206, 106, 5, date_format('2014-01-19','%Y-%m-%d'));
insert into Rating values(207, 107, 5, date_format('2000-01-20','%Y-%m-%d'));
insert into Rating values(208, 104, 3, date_format('1999-01-02','%Y-%m-%d'));
