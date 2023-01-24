create database clinicals

use clinicals


create database IPL

use IPL

create table TEAMS (

id int NOT NULL,
team_name varchar(255) NOT NULL,
city varchar(255)  NOT NULL,
playoffProbability varchar(255),
primary key (id) 



)

create table schedule (
match_id int NOT NULL,
teamA varchar(255) NOT NULL,
teamB varchar(255) NOT NULL,
match_day DATE NOT NULL,
match_time TIME(3) NOT NULL,
result varchar(255) ,
venue varchar(255),
primary key (match_id)
)

select * from teams

select * from schedule
delete  from teams where  playoffProbability =0
alter table teams add column initial varchar(255) NOT NULL ;
insert into teams values(1, "Mumbai Indians","Mumbai",0,"MI");

insert into teams values(10, "Chennai Super Kings","Chennai",0,"CSK");
insert into teams values(9, "Lucknow Super Giants","Lucknow",0,"LSG");
insert into teams values(8, "Sunrisers Hyderabad","Hyderabad",0,"SRH");

insert into teams values(7, "Royal CHallengers Bangalore","Bangalore",0,"RCB");

insert into teams values(6, "Kokatta Knight Riders","Kolkatta",0,"KKR");

insert into teams values(5, "Delhi Capitals","Delhi",0,"DC");

insert into teams values(4, "Punjab Kings","Chandigarh",0,"PBK");

insert into teams values(3, "Rajasthan Royals","Jaipur",0,"RR");

insert into teams values(2, "Gujarat Titans","Baroda",0,"GT")