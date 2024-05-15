/*
 Dado a seguinte árvore binária balanceada armazenada na tabela nodes, classifique cada nó com os tipos LEAF, INNER, e ROOT. Apresente o resultado ordenado pelo valor do identificador do nó.
 
 ---------------------- 50 ----------------------
 |                                               |
 ------ 30 ------                                ------ 75 ------
 |               |                               |               |        
 --- 15 ---      --- 35 ---                      --- 60 ---      --- 90 --- 
 |         |     |         |                     |         |     |         |
 01        20    32        40                    55        70    80        95
 
 
 Esquema
 nodes
 Coluna	    Tipo
 node_id	numeric
 pointer	numeric
 
 
 Tabelas
 nodes
 node_id	pointer
 50	        30
 50	        75
 30	        15
 30	        35
 15	        1
 15	        20
 35     	32
 35	        40
 1	        null
 20	        null
 32     	null
 40     	null
 75	        60
 75	        90
 60     	55
 60     	70
 90     	80
 90         95
 55	        null
 70	        null
 80	        null
 95	        null
 
 
 Exemplo de saída
 node_id	type
 1	        LEAF
 15	        INNER
 20	        LEAF
 30	        INNER
 32	        LEAF
 35	        INNER
 40	        LEAF
 50	        ROOT
 55	        LEAF
 60	        INNER
 70	        LEAF
 75	        INNER
 80	        LEAF
 90	        INNER
 95	        LEAF
 */
/*
 Meu Resultado: 
 */
WITH NodeTypes AS (
    SELECT
        distinct node_id,
        CASE
            WHEN node_id = 50 THEN 'ROOT'
            WHEN pointer IS NULL
            AND node_id IS NOT NULL THEN 'LEAF'
            WHEN pointer IS NOT NULL
            AND node_id IS NOT NULL THEN 'INNER'
        END AS type
    FROM
        nodes
)
SELECT
    node_id,
    type
FROM
    NodeTypes
ORDER BY