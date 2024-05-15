/*
 Seu amigo Zé Maria se encontra em uma emboscada porque fez um update sem where e acabou zerando todos os valores da coluna price. Para sua sorte, o preço pode ser calculado novamente sabendo o tipo do produto.
 
 Se o tipo do produto é igual A, o preço será 20.0
 Se o tipo do produto é igual B, o preço será 70.0
 Se o tipo do produto é igual C, o preço será 530.5
 O seu trabalho é mostrar o nome e o preço de todos os produtos. Você também deve mostrar os produtos em conjuntos com a seguinte ordem: primeiro todos os produtos do tipo A, segundo o tipo B, e por último o tipo C. Além disso, os produtos de cada um dos conjuntos (A,B,C), devem está ordenados pelo seu ID de forma decrescente.
 
 Esquema
 value_table
 Coluna	    Tipo
 id	        numeric
 name	    varchar (50)
 type	    char
 price	    numeric
 
 
 Tabelas
 products
 id	name	        type	price
 1	Monitor 	    B	    0
 2	Headset	        A	    0
 3	PC Case	        A	    0
 4	Computer Desk	C	    0
 5	Gaming Chair	C	    0
 6	Mouse	        A	    0
 
 
 Exemplo de Saída
 name	        price
 Mouse	        20.0
 PC Case	    20.0
 Headset	    20.0
 Monitor	    70.0
 Gaming Chair	530.5
 Computer Desk	530.5
 */
/*
 Meu Resultado:
 */
SELECT
    name,
    (
        CASE
            WHEN type = 'A' THEN 20.0
            WHEN type = 'B' THEN 70.0
            WHEN type = 'C' THEN 530.5
            ELSE NULL
        END
    ) AS price
FROM
    products
ORDER BY
    type,
    id DESC