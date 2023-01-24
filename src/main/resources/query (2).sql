 select schedule0_.match_id as match_id1_0_, schedule0_.match_day as match_da2_0_, schedule0_.match_time as match_ti3_0_, schedule0_.result as result4_0_, schedule0_.teamA as teama5_0_, schedule0_.teamB as teamb6_0_, schedule0_.venue as venue7_0_ from schedule schedule0_ 
 where schedule0_.result is null

 select * from [dbo].[schedule] where result is null

 delete from [dbo].[schedule] where match_id >=51;

  INSERT INTO SCHEDULE VALUES (51,'GT','MI','06-05-2022','30:00',NULL,'Brabourne');
 INSERT INTO SCHEDULE VALUES (52,'PBKS','RR','07-05-2022','30:00',NULL,'Wankhede');
 INSERT INTO SCHEDULE VALUES (53,'LSG','KKR','07-05-2022','30:00',NULL,'Pune');
 INSERT INTO SCHEDULE VALUES (54,'SRH','RCB','08-05-2022','30:00',NULL,'Wankhede');
 INSERT INTO SCHEDULE VALUES (55,'CSH','DC','08-05-2022','30:00',NULL,'DYPatil');
 INSERT INTO SCHEDULE VALUES (56,'MI','KKR','09-05-2022','30:00',NULL,'DYPatil');
 INSERT INTO SCHEDULE VALUES (57,'LSG','GT','10-05-2022','30:00',NULL,'Pune');
 INSERT INTO SCHEDULE VALUES (58,'RR','DC','11-05-2022','30:00',NULL,'DYPAtil');
 INSERT INTO SCHEDULE VALUES (59,'CSK','MI','12-05-2022','30:00',NULL,'Wankhede');
 INSERT INTO SCHEDULE VALUES (60,'RCB','PBKS','13-05-2022','30:00',NULL,'Brabourne');
 INSERT INTO SCHEDULE VALUES (61,'KKR','SRH','14-05-2022','30:00',NULL,'Pune');
 INSERT INTO SCHEDULE VALUES (62,'CSK','GT','15-05-2022','30:00',NULL,'Wankhede');
 INSERT INTO SCHEDULE VALUES (63,'LSG','RR','15-05-2022','30:00',NULL,'Brabourne');
 INSERT INTO SCHEDULE VALUES (64,'PBKS','DC','16-05-2022','30:00',NULL,'DYPatil');
 INSERT INTO SCHEDULE VALUES (65,'MI','SRH','17-05-2022','30:00',NULL,'Wankehde');
 INSERT INTO SCHEDULE VALUES (66,'KKR','LSG','18-05-2022','30:00',NULL,'DYPatil');
 INSERT INTO SCHEDULE VALUES (67,'RCB','GT','19-05-2022','30:00',NULL,'Wankehde');
 INSERT INTO SCHEDULE VALUES (68,'RR','CSK','20-05-2022','30:00',NULL,'Brabourne');
 INSERT INTO SCHEDULE VALUES (69,'Mi','DC','21-05-2022','30:00',NULL,'Wankhede');
 INSERT INTO SCHEDULE VALUES (70,'SRH','PBKS','22-05-2022','30:00',NULL,'Wankhede');