/*
 Dada uma single-column table de valores inteiros, qual é o valor atributo mais frequente, ou seja, a moda estatística desses valores?
 
 Esquema
 value_table
 Coluna	Tipo
 amount	integer
 
 
 Tabelas
 value_table
 amount
 4
 6
 7
 1
 1
 2
 3
 2
 3
 1
 5
 6
 1
 7
 8
 9
 10
 11
 12
 4
 5
 5
 3
 6
 2
 2
 1
 
 Exemplo de Saída
 most_frequent_value
 1
 */
/*
 Meu Resultado:
 */
SELECT
    amount AS most_frequent_value
FROM
    value_table
GROUP BY
    amount
ORDER BY
    COUNT(*) DESC
LIMIT
    1;