SELECT dados_mutuarios.person_age AS Idade, dados_mutuarios.person_income AS Salario, dados_mutuarios.person_home_ownership AS Propriedade, dados_mutuarios.person_emp_length AS Tempo_Trabalho,
emprestimos.loan_intent AS Motivo, emprestimos.loan_grade AS Pontuacao, emprestimos.loan_amnt AS Valor, emprestimos.loan_int_rate AS Tx_Juros, emprestimos.loan_status AS Inadiplente, emprestimos.loan_percent_income AS Renda_Percentual,
historicos_banco.cb_person_default_on_file as Historico_Inadiplencia, historicos_banco.cb_person_cred_hist_length as Tempo_Cartao_Solicitacao_Credito
FROM ids
INNER JOIN dados_mutuarios
ON ids.person_id = dados_mutuarios.person_id
INNER JOIN emprestimos
ON ids.loan_id = emprestimos.loan_id
INNER JOIN historicos_banco
ON ids.cb_id = historicos_banco.cb_id
WHERE emprestimos.loan_intent IS NOT NULL
AND dados_mutuarios.person_age IS NOT NULL
AND dados_mutuarios.person_income IS NOT NULL
AND dados_mutuarios.person_home_ownership IS NOT NULL
AND dados_mutuarios.person_emp_length IS NOT NULL
AND emprestimos.loan_intent IS NOT NULL
AND emprestimos.loan_grade IS NOT NULL
AND emprestimos.loan_amnt IS NOT NULL
AND emprestimos.loan_int_rate IS NOT NULL
AND emprestimos.loan_status IS NOT NULL
AND emprestimos.loan_percent_income IS NOT NULL
AND historicos_banco.cb_person_default_on_file IS NOT NULL
AND historicos_banco.cb_person_cred_hist_length IS NOT NULL;