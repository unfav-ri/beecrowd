/*
 A Liga Internacional de Escavação Subterrânea já é um sucesso entre os esportes alternativos, porém todos que trabalham na organização do evento trabalham com escavação e não computação. Então você foi contratado para solucionar o problema da Liga.
 
 Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted:
 
 Esquema
 league
 Coluna	        Tipo
 position (PK)	integer
 team	        varchar


 Tabelas
 league
 position	team
 1	        The Quack Bats
 2	        The Responsible Hornets
 3	        The Bawdy Dolphins
 4	        The Abstracted Sharks
 5	        The Nervous Zebras
 6	        The Oafish Owls
 7	        The Unequaled Bison
 8	        The Keen Kangaroos
 9	        The Left Nightingales
 10	        The Terrific Elks
 11	        The Lumpy Frogs
 12	        The Swift Buffalo
 13	        The Big Chargers
 14	        The Rough Robins
 15	        The Silver Crocs

 
 Exemplo de Saída
 name
 Podium: The Quack Bats
 Podium: The Responsible Hornets
 Podium: The Bawdy Dolphins
 Demoted: The Rough Robins
 Demoted: The Silver Crocs
 */
/*
 Meu Resultado:
 */
(
    SELECT
        'Podium: ' || team
    FROM
        league
    ORDER BY
        position
    LIMIT
        3
)
UNION
ALL (
    WITH t AS (
        SELECT
            *
        FROM
            league
        ORDER BY
            position DESC
        LIMIT
            2
    )
    SELECT
        'Demoted: ' || team
    FROM
        t
    ORDER BY
        position ASC
);