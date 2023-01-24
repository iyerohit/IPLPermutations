create table TEAMS (

id int NOT NULL,
team_name varchar(255) NOT NULL,
city varchar(255)  NOT NULL,
playoffProbability varchar(255),
initial varchar(255) NOT NULL,
primary key (id) 



);

create table schedule (
match_id int NOT NULL,
teamA varchar(255) NOT NULL,
teamB varchar(255) NOT NULL,
match_day varchar(255) NOT NULL,
match_time varchar(255) NOT NULL,
result varchar(255) ,
venue varchar(255),
primary key (match_id)
);
alter table [dbo].[schedule] alter column match_day varchar(255) NOT NULL;
alter table [dbo].[schedule] alter column match_time varchar(255) NOT NULL;

insert into teams values(1, 'Mumbai Indians','Mumbai',0,'MI');

insert into teams values(10, 'Chennai Super Kings','Chennai',0,'CSK');
insert into teams values(9, 'Lucknow Super Giants','Lucknow',0,'LSG');
insert into teams values(8, 'Sunrisers Hyderabad','Hyderabad',0,'SRH');

insert into teams values(7, 'Royal CHallengers Bangalore','Bangalore',0,'RCB');

insert into teams values(6, 'Kokatta Knight Riders','Kolkatta',0,'KKR');

insert into teams values(5, 'Delhi Capitals','Delhi',0,'DC');

insert into teams values(4, 'Punjab Kings','Chandigarh',0,'PBK');

insert into teams values(3, 'Rajasthan Royals','Jaipur',0,'RR');

insert into teams values(2, 'Gujarat Titans','Baroda',0,'GT');
 INSERT INTO SCHEDULE VALUES (1,'CSK','KKR','26-03-2022','30:00','KKR','Wankhede');
 INSERT INTO SCHEDULE VALUES (2,'DC','MI','27-03-2022','30:00','DC','Brabourne');
 INSERT INTO SCHEDULE VALUES (3,'PBKS','RCB','27-03-2022','30:00','PBKS','DYPatil');
 INSERT INTO SCHEDULE VALUES (4,'GT','LSG','28-03-2022','30:00','GT','Wankhede');
 INSERT INTO SCHEDULE VALUES (5,'SRH','RR','29-03-2022','30:00','RR','Pune');
 INSERT INTO SCHEDULE VALUES (6,'RCB','KKR','30-03-2022','30:00','RCB','DYPatil');
 INSERT INTO SCHEDULE VALUES (7,'LSG','CSK','31-03-2022','30:00','LSG','Brabourne');
 INSERT INTO SCHEDULE VALUES (8,'KKR','PBKS','01-04-2022','30:00','KKR','Wankhede');
 INSERT INTO SCHEDULE VALUES (9,'MI','RR','02-04-2022','30:00','RR','DYPAtil');
 INSERT INTO SCHEDULE VALUES (10,'GT','DC','02-04-2022','30:00','GT','Pune');
 INSERT INTO SCHEDULE VALUES (11,'CSK','PBKS','03-04-2022','30:00','PBKS','Brabourne');
 INSERT INTO SCHEDULE VALUES (12,'SRH','LSG','04-04-2022','30:00','LSG','DYPatil');
 INSERT INTO SCHEDULE VALUES (13,'RR','RCB','05-04-2022','30:00','RCB','Wankhede');
 INSERT INTO SCHEDULE VALUES (14,'KKR','MI','06-04-2022','30:00','KKR','Pune');
 INSERT INTO SCHEDULE VALUES (15,'LSG','DC','07-04-2022','30:00','LSG','DYPatil');
 INSERT INTO SCHEDULE VALUES (16,'PBKS','GT','08-04-2022','30:00','GT','Brabourne');
 INSERT INTO SCHEDULE VALUES (17,'CSK','SRH','09-04-2022','30:00','SRH','DYPatil');
 INSERT INTO SCHEDULE VALUES (18,'RCB','MI','09-04-2022','30:00','RCB','Pune');
 INSERT INTO SCHEDULE VALUES (19,'KKR','DC','10-04-2022','30:00','DC','Brabourne');
 INSERT INTO SCHEDULE VALUES (20,'RR','LSG','10-04-2022','30:00','RR','Wankhede');
 INSERT INTO SCHEDULE VALUES (21,'SRH','GT','11-04-2022','30:00','SRH','DYPatil');
 INSERT INTO SCHEDULE VALUES (22,'CSK','RCB','12-04-2022','30:00','CSK','DYPatil');
 INSERT INTO SCHEDULE VALUES (23,'MI','PBKS','13-04-2022','30:00','PBKS','Pune');
 INSERT INTO SCHEDULE VALUES (24,'RR','GT','14-04-2022','30:00','GT','DYPatil');
 INSERT INTO SCHEDULE VALUES (25,'SRH','KKR','15-04-2022','30:00','SRH','Brabourne');
 INSERT INTO SCHEDULE VALUES (26,'MI','LSG','16-04-2022','30:00','LSG','Brabourne');
 INSERT INTO SCHEDULE VALUES (27,'DC','RCB','16-04-2022','30:00','RCB','Wankhede');
 INSERT INTO SCHEDULE VALUES (28,'PBKS','SRH','17-04-2022','30:00','SRH','DYPatil');
 INSERT INTO SCHEDULE VALUES (29,'GT','CSK','17-04-2022','30:00','GT','Pune');
 INSERT INTO SCHEDULE VALUES (30,'RR','KKR','18-04-2022','30:00','RR','Brabourne');
 INSERT INTO SCHEDULE VALUES (31,'LSG','RCB','19-04-2022','30:00','RCB','DYPatil');
 INSERT INTO SCHEDULE VALUES (32,'DC','PBKS','20-04-2022','30:00','DC','Pune');
 INSERT INTO SCHEDULE VALUES (33,'Mi','CSK','21-04-2022','30:00','CSK','DYPatil');
 INSERT INTO SCHEDULE VALUES (34,'DC','RR','22-04-2022','30:00','RR','Pune');
 INSERT INTO SCHEDULE VALUES (35,'KKR','GT','23-04-2022','30:00','GT','DYPatil');
 INSERT INTO SCHEDULE VALUES (36,'RCB','SRH','23-04-2022','30:00','SRH','Brabourne');
 INSERT INTO SCHEDULE VALUES (37,'LSG','MI','24-04-2022','30:00','LSG','Wankhede');
 INSERT INTO SCHEDULE VALUES (38,'PBKS','RR','25-04-2022','30:00','PBKS','Wankhede');
 INSERT INTO SCHEDULE VALUES (39,'RCB','RR','26-04-2022','30:00','RR','Pune');
 INSERT INTO SCHEDULE VALUES (40,'GT','SRH','27-04-2022','30:00','GT','Wankhede');
 INSERT INTO SCHEDULE VALUES (41,'DC','KKR','28-04-2022','30:00','DC','Wankhede');
 INSERT INTO SCHEDULE VALUES (42,'PBKS','LSG','29-04-2022','30:00','LSG','Pune');
 INSERT INTO SCHEDULE VALUES (43,'GT','RCB','30-04-2022','30:00','GT','Brabourne');
 INSERT INTO SCHEDULE VALUES (44,'RR','Mi','30-04-2022','30:00','MI','DYPatil');
 INSERT INTO SCHEDULE VALUES (45,'DC','LSG','01-05-2022','30:00','LSG','Wankhede');
 INSERT INTO SCHEDULE VALUES (46,'SRH','CSK','01-05-2022','30:00','CSK','Pune');
 INSERT INTO SCHEDULE VALUES (47,'KKR','RR','02-05-2022','30:00','KKR','Wankhede');
 INSERT INTO SCHEDULE VALUES (48,'GT','PBKS','03-05-2022','30:00','PBKS','DYPatil');
 INSERT INTO SCHEDULE VALUES (49,'RCB','CSK','04-05-2022','30:00','RCB','Pune');
 INSERT INTO SCHEDULE VALUES (50,'DC','SRH','05-05-2022','30:00','DC','Brabourne');
 INSERT INTO SCHEDULE VALUES (51,'GT','MI','06-05-2022','30:00','NULL','Brabourne');
 INSERT INTO SCHEDULE VALUES (52,'PBKS','RR','07-05-2022','30:00','NULL','Wankhede');
 INSERT INTO SCHEDULE VALUES (53,'LSG','KKR','07-05-2022','30:00','NULL','Pune');
 INSERT INTO SCHEDULE VALUES (54,'SRH','RCB','08-05-2022','30:00','NULL','Wankhede');
 INSERT INTO SCHEDULE VALUES (55,'CSH','DC','08-05-2022','30:00','NULL','DYPatil');
 INSERT INTO SCHEDULE VALUES (56,'MI','KKR','09-05-2022','30:00','NULL','DYPatil');
 INSERT INTO SCHEDULE VALUES (57,'LSG','GT','10-05-2022','30:00','NULL','Pune');
 INSERT INTO SCHEDULE VALUES (58,'RR','DC','11-05-2022','30:00','NULL','DYPAtil');
 INSERT INTO SCHEDULE VALUES (59,'CSK','MI','12-05-2022','30:00','NULL','Wankhede');
 INSERT INTO SCHEDULE VALUES (60,'RCB','PBKS','13-05-2022','30:00','NULL','Brabourne');
 INSERT INTO SCHEDULE VALUES (61,'KKR','SRH','14-05-2022','30:00','NULL','Pune');
 INSERT INTO SCHEDULE VALUES (62,'CSK','GT','15-05-2022','30:00','NULL','Wankhede');
 INSERT INTO SCHEDULE VALUES (63,'LSG','RR','15-05-2022','30:00','NULL','Brabourne');
 INSERT INTO SCHEDULE VALUES (64,'PBKS','DC','16-05-2022','30:00','NULL','DYPatil');
 INSERT INTO SCHEDULE VALUES (65,'MI','SRH','17-05-2022','30:00','NULL','Wankehde');
 INSERT INTO SCHEDULE VALUES (66,'KKR','LSG','18-05-2022','30:00','NULL','DYPatil');
 INSERT INTO SCHEDULE VALUES (67,'RCB','GT','19-05-2022','30:00','NULL','Wankehde');
 INSERT INTO SCHEDULE VALUES (68,'RR','CSK','20-05-2022','30:00','NULL','Brabourne');
 INSERT INTO SCHEDULE VALUES (69,'Mi','DC','21-05-2022','30:00','NULL','Wankhede');
 INSERT INTO SCHEDULE VALUES (70,'SRH','PBKS','22-05-2022','30:00','NULL','Wankhede');
