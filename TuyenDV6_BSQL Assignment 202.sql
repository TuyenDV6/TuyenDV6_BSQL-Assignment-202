create table TRAINEE (
             traineeId int not null identity(1,1) primary key , 
			 Full_Name varchar(100) ,
			 Birth_Date date , 
			 gender bit , 
			 ET_IQ int not null , check(ET_IQ  between 0 and 20 ), 
			 EtMath int not null , check(EtMath  between 0 and 20 ) , 
			 EtEnglish int not null , check(EtEnglish  between 0 and 20 ), 
			 training varchar(100) not null , 
			 notes varchar(100) not null 

)

insert into TRAINEE values ('T', '2020-1-1', 1, 16,16,19, 'net', 'good', 'aaa' )  ;
insert into TRAINEE values ('T1', '2020-1-1', 1, 16,16,16, 'net', 'good','19' ) ;
insert into TRAINEE values ('T2', '2020-1-1', 1, 16,16,16, 'net', 'good' ,'boy') ;
insert into TRAINEE values ('T3', '2020-1-1', 1, 19,19,19, 'net', 'good' , 'girl') ;


alter table TRAINEE  add Fsolt_Account varchar(100) not null unique 

select Full_Name,ET_IQ, EtMath, EtEnglish from TRAINEE group by Full_Name, ET_IQ, EtMath, EtEnglish 
having ET_IQ + EtMath >=20 and ET_IQ >= 8 and EtMath >= 8 and EtEnglish >= 18 
