create table TRAINEE (
             traineeId int not null identity(1,1) primary key , 
			 fullname varchar(100) ,
			 birthday date , 
			 gender bit , 
			 EtIq int not null , check(EtIq  between 0 and 20 ), 
			 EtMath int not null , check(EtMath  between 0 and 20 ) , 
			 EtEnglish int not null , check(EtEnglish  between 0 and 20 ), 
			 training varchar(100) not null , 
			 notes varchar(100) not null 

)

insert into TRAINEE values ('Hi', '2020-1-1', 1, 16,16,19, 'net', 'good', 'aaa' )  ;
insert into TRAINEE values ('Hi1', '2020-1-1', 1, 16,16,16, 'net', 'good','19' ) ;
insert into TRAINEE values ('Hi2', '2020-1-1', 1, 16,16,16, 'net', 'good' ,'boy') ;
insert into TRAINEE values ('Hi3', '2020-1-1', 1, 19,19,19, 'net', 'good' , 'girl') ;


alter table TRAINEE  add Fsolt_Account varchar(100) not null unique 

select fullname,EtIq, EtMath, EtEnglish from TRAINEE group by fullname, EtIq, EtMath, EtEnglish 
having EtIq + EtMath >=20 and EtIq >= 8 and EtMath >= 8 and EtEnglish >= 18 