ALTER TABLE ids
ADD CONSTRAINT FK_ids
FOREIGN KEY (person_id) REFERENCES dados_mutuarios (person_id),
FOREIGN KEY (loan_id) REFERENCES emprestimos (loan_id),
FOREIGN KEY (cb_id) REFERENCES historicos_banco (cb_id);