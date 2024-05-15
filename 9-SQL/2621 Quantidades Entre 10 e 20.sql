/*
 Na hora de entregar o relatório de quantos produtos a empresa tem em estoque, uma parte do relatório ficou corrompida, por isso o responsável do estoque lhe pediu uma ajuda, ele quer que você exiba os seguintes dados para ele.
 
 Exiba o nome dos produtos cujas quantidades estejam entre 10 e 20 e cujo nome do fornecedor inicie com a letra ‘P’.
 
 Esquema
 providers
 Coluna	    Tipo
 id (PK)	numeric
 name	    character varying (255)
 street	    character varying (255)
 city	    character varying (255)
 state	    char (2)  
 
 
 products
 Coluna	Tipo
 id (PK)	        numeric
 name	            character varying (255)
 amount	            numeric
 price	            numeric
 id_providers (FK)	numeric
 
 
 Tabelas
 providers
 id	name	            street	                        city	        state
 1	Ajax SA	            Rua Presidente Castelo Branco	Porto Alegre	RS
 2	Sansul SA	        Av Brasil	                    Rio de Janeiro	RJ
 3	Pr Sheppard Chairs	Rua do Moinho	                Santa Maria	    RS
 4	Elon Electro	    Rua Apolo	                    São Paulo	    SP
 5	Mike Electro	    Rua Pedro da Cunha	            Curitiba	    PR  
 
 
 products
 id	name	            amount	price	    id_providers
 1	Blue Chair	        30	    300.00	    5
 2	Red Chair	        50	    2150.00	    2
 3	Disney Wardrobe	    400	    829.50	    4
 4	Executive Chair	    17	    9.90	    3
 5	Solar Panel	        30	    3000.25	    4
 Exemplo de saída
 name
 Executive Chair
 */
/*
Meu Resultado:
 */
SELECT
    p.name
FROM
    products p
    JOIN providers pr ON p.id_providers = pr.id
WHERE
    p.amount BETWEEN 10
    AND 20
    AND pr.name LIKE 'P%'