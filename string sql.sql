create database dateandtime

SELECT ASCII('A') AS A, ASCII('B') AS B,   
ASCII('a') AS a, ASCII('b') AS b,  
ASCII(1) AS [1], ASCII(2) AS [2];

SELECT ASCII('P') AS [ASCII], ASCII('æ') AS [Extended_ASCII];
SELECT NCHAR(80) AS [CHARACTER], NCHAR(195) AS [CHARACTER];
SELECT UNICODE('æ') AS [Extended_ASCII], NCHAR(230) AS [CHARACTER];

SET TEXTSIZE 0;  

DECLARE @position INT, @string CHAR(8);  

SET @position = 1;  
SET @string = 'New Moon';  
WHILE @position <= DATALENGTH(@string)  
   BEGIN  
   SELECT ASCII(SUBSTRING(@string, @position, 1)),   
      CHAR(ASCII(SUBSTRING(@string, @position, 1)))  
   SET @position = @position + 1  
   END;  
GO

SELECT CHAR(65) AS [65], CHAR(66) AS [66],   
CHAR(97) AS [97], CHAR(98) AS [98],   
CHAR(49) AS [49], CHAR(50) AS [50];  

SELECT name, 'was created on ', create_date, CHAR(13), name, 'is currently ', state_desc   
FROM sys.databases;  
GO

SELECT CHAR(188) AS single_byte_representing_complete_character, 
  CHAR(0xBC) AS single_byte_representing_complete_character;  

  SELECT CHAR(129) AS first_byte_of_double_byte_character, 
  CHAR(0x81) AS first_byte_of_double_byte_character;  

  CREATE DATABASE [multibyte-char-context]
  COLLATE Japanese_CI_AI
DECLARE @document VARCHAR(64);  
SELECT @document = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('bicycle', @document);  

DECLARE @documents VARCHAR(64);  
  
SELECT @documents = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('vital', @documents, 5);  
SELECT CHARINDEX('bike', @documents);  

USE tempdb;  
GO  

SELECT CHARINDEX ( 'TEST',  
       'This is a Test'  
       COLLATE Latin1_General_CS_AS);

USE tempdb;  
GO  
SELECT CHARINDEX ( 'TEST',  
       'This is a Test'  
       COLLATE Latin1_General_CI_AS);  
GO
SELECT CHARINDEX('is', 'This is a string');  
SELECT CHARINDEX('is', 'This is a string', 4);  
SELECT TOP(1) CHARINDEX('at', 'This is a string') FROM dbo.DimCustomer; 
SELECT CONCAT ( 'Happy ', 'Birthday ', 11, '/', '25' ) AS Result;
CREATE TABLE #temp (  
    emp_name NVARCHAR(200) NOT NULL,  
    emp_middlename NVARCHAR(200) NULL,  
    emp_lastname NVARCHAR(200) NOT NULL  
);  
INSERT INTO #temp VALUES( 'Name', NULL, 'Lastname' );  
SELECT CONCAT( emp_name, emp_middlename, emp_lastname ) AS Result  
FROM #temp;
SELECT CONCAT_WS(',','1 Microsoft Way', NULL, NULL, 'Redmond', 'WA', 98052) AS Address;
SELECT 
STRING_AGG(CONCAT_WS( ',', database_id, recovery_model_desc, containment_desc), char(13)) AS DatabaseInfo
FROM sys.databases
SELECT SOUNDEX('Green'), SOUNDEX('Greene'), DIFFERENCE('Green','Greene');  
SELECT SOUNDEX('Blotchet-Halls'), SOUNDEX('Greene'), DIFFERENCE('Blotchet-Halls', 'Greene');
