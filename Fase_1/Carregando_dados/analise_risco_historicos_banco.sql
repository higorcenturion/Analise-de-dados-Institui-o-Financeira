drop table historicos_banco;

CREATE TABLE historicos_banco (
  cb_id varchar(16)  NOT NULL,
  cb_person_default_on_file varchar(1) NULL,
  cb_person_cred_hist_length int NULL
  PRIMARY KEY (cb_id)
);

BULK INSERT historicos_banco
FROM 'C:\TEMP2\historico_banco.txt'
WITH
	(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = ';',
	KEEPNULLS
	);

SELECT * FROM historicos_banco;
