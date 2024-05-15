/*
 O diretor da Mangojata Advogados ordenou que lhe fosse entregue um relatório sobre seus advogados atuais.
 
 O diretor quer que você mostre para ele o nome do advogado que têm mais clientes, o nome do advogado que tem menos clientes e a média de clientes entre todos os advogados.
 
 OBS: Antes de apresentar a média mostre um campo chamado Average a fim de deixar o relatório mais apresentável. A média deverá ser apresentada em inteiros.
 
 Esquema
 lawyers
 Coluna	            Tipo
 register (PK)	    integer
 name	            varchar
 customers_number	integer
 
 
 Tabelas
 lawyers
 register	name	                customers_number
 1648	    Marty M. Harrison	    5
 2427	    Jonathan J. Blevins	    15
 3365	    Chelsey D. Sanders	    20
 4153	    Dorothy W. Ford	        16
 5525	    Penny J. Cormier	    6
 
 
 Exemplo de Saída
 name	                customers_number
 Chelsey D. Sanders	    20
 Marty M. Harrison	    5
 Average	            12
 */
/*
 Meu Resultado:
 */
(
    SELECT
        name,
        customers_number
    FROM
        lawyers
    ORDER BY
        customers_number DESC
    LIMIT
        1
)
UNION
ALL (
    SELECT
        name,
        customers_number
    FROM
        lawyers
    ORDER BY
        customers_number ASC
    LIMIT
        1
)
UNION
ALL (
    SELECT
        'Average',
        round(AVG(customers_number), 0)
    FROM
        lawyers
)