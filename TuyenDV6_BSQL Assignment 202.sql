
--tạo bảng TRAINEE
CREATE TABLE Trainee(
	TraineeID int IDENTITY(1,1) PRIMARY KEY,
	Full_Name nvarchar(50),
	Birth_Date date,
	Gender bit,
	ET_IQ TINYINT CHECK(ET_IQ BETWEEN 0 and 20),
	ET_Gmath TINYINT CHECK(ET_Gmath BETWEEN 0 and 20),
	ET_English TINYINT CHECK(ET_English BETWEEN 0 and 50),
	Training_Class char(5) NOT NULL,
	Evaluation_Notes nvarchar(50) NOT NULL,)


--thêm dữ liệu vào bảng
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES(N'ĐÀO VĂN TUYÊN','1998-01-25',1,20,20,20,'.NET',N'tốt');
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES(N'	','1998-01-25',0,19,10,50,'java',N'gôd');
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES(N'!@','1998-01-25',1,1,0,20,'.NET','!!!!');

--xóa dữ liệu của bảng để có thể ADD thêm cột Fsoft_Account NOT NULL UNIQUE
ALTER TABLE Trainee ADD Fsoft_Account varchar(100) NOT NULL UNIQUE;

--insert lại thêm cột Fsoft_Account
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,Fsoft_Account)
VALUES(N'ĐÀO VĂN TUYÊN','1998-01-25',1,20,20,20,'.NET',N'tốt','NN');
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,Fsoft_Account)
VALUES(N'	','1998-01-25',0,19,10,50,'java',N'gôd','!@#');
INSERT INTO Trainee (Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,Fsoft_Account)
VALUES(N'!@','1998-01-25',1,1,0,20,'.NET','!!!!','	 ha');


SELECT Full_Name,ET_IQ,ET_Gmath,ET_English From Trainee GROUP BY Full_Name,ET_IQ,ET_Gmath,ET_English
HAVING ET_IQ + ET_Gmath >=20 and ET_IQ >= 8 and ET_Gmath >= 8 and ET_English >= 18 
