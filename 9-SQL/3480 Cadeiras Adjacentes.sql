/*
 Encontre as cadeiras adjacentes e disponíveis de cada fila da sala de aula. A primeira coluna do resultado deve conter o identificador da fila, a segunda coluna o número da cadeira da esquerda e a terceira o número da cadeira da direita. O resultado deve estar ordenado pelo valor da segunda coluna do resultado (left).
 
 1) [1]-    [2]-        [3]         [4]-        [5]-        [6]-        [7]         [8]
 2) [9]     [10]-       [11]        [12]        [13]-       [14]        [15]        [16]-
 3) [17]    [18]-       [19]        [20]-       [21]        [22]        [23]-       [24]-
 4) [25]    [26]-       [27]-       [28]        [29]        [30]-       [31]-       [32]
 
 Esquema
 chairs
 Coluna	    Tipo
 id	        numeric
 queue	    umeric
 available	boolean
 
 
 Tabelas
 chairs
 id	    queue	available
 1	    1	    FALSE
 2	    1	    FALSE
 3	    1	    TRUE
 4	    1	    FALSE
 5	    1	    FALSE
 6	    1	    FALSE
 7	    1	    TRUE
 8	    1	    TRUE
 9	    2	    TRUE
 10	    2	    FALSE
 11	    2	    TRUE
 12	    2	    TRUE
 13	    2	    FALSE
 14	    2	    TRUE
 15	    2	    TRUE
 16	    2	    FALSE
 17	    3	    TRUE
 18	    3	    FALSE
 19	    3	    TRUE
 20	    3	    FALSE
 21	    3	    TRUE
 22	    3	    TRUE
 23	    3	    FALSE
 24	    3	    FALSE
 25	    4	    TRUE
 26	    4	    FALSE
 27	    4	    FALSE
 28	    4	    TRUE
 29	    4	    TRUE
 30	    4	    FALSE
 31	    4	    FALSE
 32	    4	    TRUE
 
 
 Exemplo de saída
 queue	left	right
 1	    7	    8
 2	    11	    12
 2	    14	    15
 3	    21	    22
 4	    28	    29
 */
/*
 Meu Resultado:
 */
SELECT
    c1.queue AS "queue",
    c1.id AS "left",
    c2.id AS "right"
FROM
    chairs c1
    JOIN chairs c2 ON c1.queue = c2.queue
    AND c1.id + 1 = c2.id
WHERE
    c1.available = TRUE
    AND c2.available = TRUE
ORDER BY
    c1.queue,
    c1.id;