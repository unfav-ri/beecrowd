/*
 Um sensor captura a temperatura do ambiente a cada minuto. Os registros tambÃ©m possuem um marcador, em que todas as vezes que a temperatura muda em relação a última captura esse marcador é incrementado. Quando o sensor armazena 15 registros ele prepara uma mensagem para envia-la o computador central. Para reduzir o tamanho da mensagem o sensor compacta os registros próximos com a mesma temperatura e adiciona o número de registros que foram compactados. Construa uma consulta para resolver esse problema, mostrando a temperatura e o número de registros correspondente.
 
 
 Esquema
 records
 Coluna	        Tipo
 id (PK)	    integer
 temperature	integer
 mark	        integer
 
 
 Tabelas
 records
 id	    temperature     mark
 1	    30	            1
 2	    30	            1
 3	    30	            1
 4	    32	            2
 5	    32	            2
 6	    32	            2
 7	    32	            2
 8	    30	            3
 9	    30  	        3
 10	    30	            3
 11	    31	            4
 12	    31	            4
 13	    33	            5
 14	    33	            5
 15	    33	            5
 
 
 Exemplo de saída
 temperature	number_of_records
 30	            3
 32	            4
 30	            3
 31	            2
 33	            3
 */
/*
 Meu Resultado:
 */
SELECT
    temperature,
    COUNT(mark) AS number_of_records
FROM
    records
GROUP BY
    mark,
    temperature
ORDER BY
    mark