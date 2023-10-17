CREATE TABLE ids (
  person_id varchar(16) NULL,
  loan_id varchar(16) NULL,
  cb_id varchar(16) NULL
); 

BULK INSERT ids
FROM 'C:\TEMP2\ids.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM ids;

BULK INSERT ids
FROM 'C:\TEMP2\ids_2.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM ids;




