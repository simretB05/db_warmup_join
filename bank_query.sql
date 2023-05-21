insert into client (name,joined_on,phone_number,address)
values
('client1','2017-03-06','205-887-9978','123street 1Av SW calgary'),
('client2','2018-03-08','205-886-9976','124street 2Av NW calgary'),
('client3','2019-03-07','205-889-9990','125street 3Av SE calgary'),
('client4','2017-03-02','205-887-9999','128street 6Av NE calgary'),
('client5','2020-06-04','207-987-7978','323street 8Av SW calgary');


insert into account (client_id,account_number,`type`,created_at)
values
  (1, 123, 'Saving', '2012-02-29'),
  (2, 456, 'Chequing', '2014-09-19'),
  (3, 789, 'Investing', '2011-07-09'),
  (4, 666, 'Saving', '2020-02-11'),
  (3, 790, 'Saving', '2022-02-10'),
  (5, 406, 'Investing', '2010-02-02'),
  (4, 923, 'Chequing', '2022-02-12'),
  (5, 411, 'Saving', '2012-02-28');
 
  insert into `transaction` (client_id,account_id,`type`,`timestamp`,amount)
 values
 (5,5,'Deposit','2020-10-11 10:00:00',699),
 (5,5,'Withdrawl','2020-01-01 1:00:00',199),
 (4,4,'Deposit','2020-11-13 17:00:00',99),
 (3,3,'Withdrawl','2018-10-17 11:00:00',299),
 (1,1,'Deposit','2002-06-21 8:00:00',300),
 (2,2,'Deposit','2002-04-30 10:00:00',0.99),
 (2,2,'Withdrawl','2018-05-31 12:00:00',399);

select c.name, a.account_number ,a.`type` 
from client c inner join account a on c.id=a.client_id ;



select  a.account_number, t.`timestamp`, t.amount
from account a inner join `transaction` t  on a.id=t.account_id
where a.`type` ='Chequing'and t.`type`='Withdrawl';

select c.name,  a.account_number,  t.amount
from client c inner join account a on c.id = a.client_id inner join `transaction` t on a.id = t.account_id 
where a.`type` ='Investing' and c.id=3;




















 
 






 

 


 


 
 


 
 
 




















