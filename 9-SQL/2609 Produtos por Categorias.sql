/*
 Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.
 
 Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.
 
 Esquema
 products
 Coluna	                Tipo
 id (PK)	            numeric
 name	                varchar
 amount	                numeric
 price	                numeric
 id_categories (FK) 	numeric  
 
 
 categories
 Coluna	    Tipo
 id (PK)	numeric
 name	    varchar
 
 
 Tabelas
 products
 id	name	                amount	    price	    id_categories
 1	Two-doors wardrobe	    100	        800	        1
 2	Dining table	        1000	    560	        3
 3	Towel holder	        10000	    25.50	    4
 4	Computer desk	        350	        320.50	    2
 5	Chair	                3000	    210.64	    4
 6	Single bed	            750	        460	        1  
 
 
 categories
 id	name
 1	wood
 2	luxury
 3	vintage
 4	modern
 5	super luxury
 
 
 Exemplo de saída
 name	    sum
 luxury	    350
 modern	    13000
 wood	    850
 vintage	1000
 */
/*
 Meu Resultado:
 */
SELECT
    c.name AS category_name,
    SUM(p.amount) AS total_amount
FROM
    products p
    JOIN categories c ON p.id_categories = c.id
GROUP BY
    c.name;