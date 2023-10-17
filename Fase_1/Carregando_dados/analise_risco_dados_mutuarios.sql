DROP TABLE dados_mutuarios;
CREATE TABLE dados_mutuarios (
  person_id varchar(16) NOT NULL,
  person_age int NULL,
  person_income int NULL,
  person_home_ownership varchar(8) NULL,
  person_emp_length INT  NULL,
  );

BULK INSERT dados_mutuarios
FROM 'C:\TEMP2\dados_mutuarios_1.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM dados_mutuarios;

BULK INSERT dados_mutuarios
FROM 'C:\TEMP2\dados_mutuarios_2.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM dados_mutuarios;
