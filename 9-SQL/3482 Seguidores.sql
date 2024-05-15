/*
 Em uma rede social com vários usuários que compartilham informações é comum que um usuário siga outros. Determine quais os usuários se seguem, por exemplo Franciso segue Laura e Laura segue Francisco. O resultado deve conter duas colunas com o nome dos dois usuários que se seguem entre si. A primeira coluna deve conter o nome do usuário com menor número de postagens e segunda o maior número de postagens, por exemplo entre Francisco e Laura, Francisco tem 23 postagens e Laura 55, logo Francisco aparece na primeira coluna e Laura na segunda coluna. Além disso, você deve ordernar o resultado pelo id do úsuario da primeira coluna.
 
 Alice (7)       Francisco (1)       Brenda (2)
 ⬆  ⬇             ⬆   ⬇       ⬈      ⬆   ⬇
 Helena (3)  ⬅   Laura (5)    ⬌    Miguel (4)
 ⬇ 
 Arthur (6)      
 
 
 Esquema
 users
 Coluna	    Tipo
 user_id	numeric
 user_name	varchar
 posts	    numeric  
 
 followers
 Coluna	                Tipo
 follower_id	        numeric
 user_id_fk         	numeric
 following_user_id_fk	numeric
 
 
 Tabelas
 users
 user_id	user_name	posts
 1	        Francisco	23
 2	        Brenda	    51
 3	        Helena	    12
 4	        Miguel	    70
 5	        Laura	    55
 6	        Arthur	    2
 7	        Alice	    3  
 
 
 followers
 follower_id	user_id_fk	    following_user_id_fk
 1	            1	            5
 2	            2	            4
 3	            3	            7
 4	            3	            6
 5	            4	            2
 6	            4	            5
 7	            5	            1
 8	            5	            3
 9	            5	            4
 10	            5	            2
 11	            7	            3
 
 
 Exemplo de saída
 u1_name	    u2_name
 Francisco	    Laura
 Brenda	        Miguel
 Laura	        Miguel
 Alice	        Helena
 */
/*
 Meu Resultado:
 */
SELECT
    LEAST(u1.user_name, u2.user_name) AS u1_name,
    GREATEST(u1.user_name, u2.user_name) AS u2_name
FROM
    followers f
    JOIN users u1 ON f.user_id_fk = u1.user_id
    JOIN users u2 ON f.following_user_id_fk = u2.user_id
WHERE
    (u1.user_id, u2.user_id) IN (
        SELECT
            user_id_fk AS user_id1,
            following_user_id_fk AS user_id2
        FROM
            followers
        UNION
        ALL
        SELECT
            following_user_id_fk AS user_id1,
            user_id_fk AS user_id2
        FROM
            followers
    )
    AND u1.posts < u2.posts
ORDER BY
    u1.user_id;