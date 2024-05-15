/*
 A Organização Mundial de Caracteres em Nomes de Pessoas (OMCNP) está fazendo um censo para saber qual é a quantidade de caracteres que as pessoas têm em seus nomes.
 
 Para ajudar a OMCNP, você deve mostrar a quantidade de caracteres de cada nome em ordem decrescente pela quantidade de caracteres.
 
 Esquema
 people
 Coluna	    Tipo
 id (PK)	integer
 name	    varchar
 
 
 Tabelas
 people
 id	name
 1	Karen
 2	Manuel
 3	Ygor
 4	Valentine
 5	Jo
 
 
 Exemplo de Saída
 name	    length
 Valentine	9
 Manuel	    6
 Karen	    5
 Ygor	    4
 Jo	        2
 */
/*
 Meu Resultado:
 */
SELECT
    name,
    LENGTH(name) AS length
FROM
    people
ORDER BY
    LENGTH(name) DESC;