/*
 O Campeonato Cearense de Futebol atrai milhares de torcedores todos os anos, você trabalha em um jornal e está encarregado de calcular a tabela de pontuação dos times. Mostre uma tabela com as seguintes colunas: o nome do time, número de partidas, vitórias, derrotas, empates e pontuação. Sabendo que a pontuação é calculada com cada vitória valendo 3 pontos, empate vale 1 e derrota rende 0. No final mostre sua tabela com a pontuação ordenada do maior para o menor.
 
 Esquema
 teams
 Coluna	    Tipo
 id (PK)	integer
 name	    varchar (50)  
 
 
 matches
 Coluna	        Tipo
 id (PK)	    integer
 team_1 (FK)	integer
 team_2 (FK)	integer
 team_1_goals	integer
 team_2_goals	integer
 
 
 Tabelas
 teams
 id	name
 1	CEARA
 2	FORTALEZA
 3	GUARANY DE SOBRAL
 4	FLORESTA  
 
 
 matches
 id	team_1	team_2	    team_1_goals	team_2_goals
 1	4	    1	        0	            4
 2	3	    2	        0	            1
 3	1	    3	        3	            0
 4	3	    4	        0	            1
 5	1	    2	        0	            0
 6	2	    4	        2	            1
 
 
 Exemplo de saída
 name	            matches	victories	defeats	draws	score
 CEARA	            3	    2	        0	    1	    7
 FORTALEZA	        3	    2	        0	    1	    7
 FLORESTA	        3	    1	        2	    0	    3
 GUARANY DE SOBRAL	3	    0	        3	    0	    0
 */
/*
 Meu Resultado: 
 */
SELECT
    teams.name,
    count(matches.team_1 + matches.team_2) AS matches,
    SUM(
        CASE
            WHEN (
                matches.team_1_goals > matches.team_2_goals
                AND teams.id = matches.team_1
            )
            OR (
                matches.team_2_goals > matches.team_1_goals
                AND teams.id = matches.team_2
            ) THEN 1
            ELSE 0
        END
    ) AS victories,
    SUM(
        CASE
            WHEN (
                matches.team_1_goals < matches.team_2_goals
                AND teams.id = matches.team_1
            )
            OR (
                matches.team_2_goals < matches.team_1_goals
                AND teams.id = matches.team_2
            ) THEN 1
            ELSE 0
        END
    ) AS defeats,
    SUM(
        CASE
            WHEN (
                matches.team_1_goals = matches.team_2_goals
                AND teams.id = matches.team_1
            )
            OR (
                matches.team_2_goals = matches.team_1_goals
                AND teams.id = matches.team_2
            ) THEN 1
            ELSE 0
        END
    ) AS draws,
    SUM(
        CASE
            WHEN (
                matches.team_1_goals = matches.team_2_goals
                AND teams.id = matches.team_1
            )
            OR (
                matches.team_2_goals = matches.team_1_goals
                AND teams.id = matches.team_2
            ) THEN 1
            ELSE 0
        END
    ) + SUM(
        CASE
            WHEN (
                matches.team_1_goals > matches.team_2_goals
                AND teams.id = matches.team_1
            )
            OR (
                matches.team_2_goals > matches.team_1_goals
                AND teams.id = matches.team_2
            ) THEN 3
            ELSE 0
        END
    ) AS score
FROM
    teams,
    matches
WHERE
    teams.id = matches.team_1
    OR teams.id = matches.team_2
GROUP BY
    teams.name
ORDER BY
    score DESC;