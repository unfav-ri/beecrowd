/*
 A Universidade Tecnológica de Marte está com seu concurso aberto para Pesquisadores. Porém o computador que processava os dados dos candidatos estragou. Você deve mostrar a lista dos candidatos, contendo o nome do candidato e a sua pontuação final (com duas casas decimais após a vírgula). Lembre-se de mostrar a lista ordenada pela pontuação do candidato (maior pontuação no topo da lista).
 
 A pontuação do candidato é o resultado da média ponderada descrita abaixo:
 
 Avg = (math*2) + (specific*3) + (project_plan*5)/10
 
 Esquema
 candidate
 Coluna	    Tipo
 id (PK)	integer
 name	    varchar  
 
 
 score
 Coluna	            Tipo
 candidate_id (FK)	integer
 math	            numeric
 specific	        numeric
 project_plan	    numeric
 
 
 Tabelas
 candidate
 id	name
 1	Michael P Cannon
 2	Barbra J Cable
 3	Ronald D Jones
 4	Timothy K Fitzsimmons
 5	Ivory B Morrison
 6	Sheila R Denis
 7	Edward C Durgan
 8	William K Spencer
 9	Donna D Pursley
 10	Ann C Davis  
 
 score
 candidate_id	math	specific	project_plan
 1	            76	    58	        21
 2	            4	    5	        22
 3	            15	    59	        12
 4	            41	    42	        99
 5	            22	    90	        9
 6	            82	    77	        15
 7	            82	    99	        56
 8	            11	    4	        22
 9	            16	    29	        94
 10	            1	    7	        59
 
 
 Exemplo de saída
 name	                avg
 Edward C Durgan	    74.10
 Timothy K Fitzsimmons	70.30
 Donna D Pursley	    58.90
 Sheila R Denis	        47.00
 Michael P Cannon	    43.10
 Ivory B Morrison	    35.90
 Ann C Davis	        31.80
 Ronald D Jones	        26.70
 William K Spencer	    14.40
 Barbra J Cable	        13.30
 */
/*
 Meu Resultado: 
 */
SELECT
    c.name,
    ROUND(
        (
            (s.math * 2) + (s.specific * 3) + (s.project_plan * 5)
        ) / 10.0,
        2
    ) AS avg
FROM
    candidate c
    INNER JOIN score s ON c.id = s.candidate_id
ORDER BY
    avg DESC;