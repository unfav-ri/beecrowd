/*
 Você trabalha em uma transportadora e precisa mostrar com urgência o ano e o nome de todos os clientes que enviaram e receberam pacotes azuis ou do ano de 2015 e também que o endereço do seu remetente ou destinatário não seja de Taiwan. Além disso, você deve ordenar o resultado pelo ano de maneira decrescente.
 
 Esquema
 users
 Coluna	    Tipo
 id (PK)	numeric
 name	    varchar (50)
 type	    char
 address	varchar (50)
 
 
 packages
 Coluna	                Tipo
 id_package (PK)	    numeric
 id_user_sender (FK)	integer
 id_user_receiver (FK)	integer
 color	                varchar (50)
 year	                integer
 
 
 Tabelas
 users
 id	    name	            address
 1	    Edgar Codd	        England
 2	    Peter Chen	        Taiwan
 3	    Jim Gray	        United States
 4	    Elizabeth O'Neil	United States
 
 
 packages
 id_package	id_user_sender	id_user_receiver	color	year
 1	        1	            2	                blue	2015
 2	        1	            3	                blue	2019
 3	        2	            4	                red	    2019
 4	        2	            1	                green	2018
 5	        3	            4	                red 	2015
 6	        4	            3	                blue	2019
 
 
 Exemplo de Saída
 year	sender	            receiver
 2019	Elizabeth ONeil	    Jim Gray
 2019	Edgar Codd	        Jim Gray
 2015	Jim Gray	        Elizabeth ONeil
 */
/*
 Meu Resultado:
 */
SELECT
    p.year,
    sender.name AS sender,
    receiver.name AS receiver
FROM
    packages p
    INNER JOIN users AS sender ON p.id_user_sender = sender.id
    INNER JOIN users AS receiver ON p.id_user_receiver = receiver.id
WHERE
    (
        p.color = 'blue'
        OR p.year = 2015
    )
    AND (
        sender.address != 'Taiwan'
        AND receiver.address != 'Taiwan'
    )
ORDER BY
    p.year DESC