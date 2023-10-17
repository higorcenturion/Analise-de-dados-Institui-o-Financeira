CREATE TABLE emprestimos (
  loan_id varchar(16) NULL,
  loan_intent varchar(32) NULL,
  loan_grade varchar(1) NULL,
  loan_amnt int NULL,
  loan_int_rate float NULL,
  loan_status int NULL,
  loan_percent_income float NULL
); 

BULK INSERT emprestimos
FROM 'C:\TEMP2\emprestimo_1.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM emprestimos;

BULK INSERT emprestimos
FROM 'C:\TEMP2\emprestimo_2.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM emprestimos;






