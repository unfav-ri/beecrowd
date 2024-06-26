/*
 Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
 
 Esquema
 movies
 Coluna	            Tipo
 id (PK)	        numeric
 name	            varchar
 id_genres (FK)	    numeric  
 
 
 genres
 Coluna	            Tipo
 id (PK)	        numeric
 description	    varchar
 
 
 Tabelas
 movies
 id	name	                        id_genres
 1	Batman	                        3
 2	The Battle of the Dark River	3
 3	White Duck	                    1
 4	Breaking Barriers	            4
 5	The Two Hours	                2  
 
 
 genres
 id	description
 1	Animation
 2	Horror
 3	Action
 4	Drama
 5	Comedy
 
 
 Exemplo de saída
 id	    name
 1	    Batman
 2	    The Battle of the Dark River
 */
/*
 Meu Resultado:
 */
SELECT
    m.id,
    m.name
FROM
    movies m
    JOIN genres g ON m.id_genres = g.id
WHERE
    g.description = 'Action';