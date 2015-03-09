/* create database reporting; use reporting */
create table items(Item_Code varchar(20), Date date, Visits int, Orders int);
insert into items values('123', '2013-01-12', 100, 30);
insert into items values('123', '2013-01-13', 50, 30);
insert into items values('123', '2014-01-12', 200, 30);
select Date, sum(Visits) from items group by Date having Date='2013-01-12';
select year(Date), sum(Visits) from reporting.items group by year(Date);
/* tested with MySQL 5.6 Ref: http://www.sqlfiddle.com/#!9/e8df7/3/0 */
