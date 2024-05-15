/*
 O semestre acabou na Universidade do Sul da Transilvânia. Todos os cursos tiveram suas notas fechadas, apenas a disciplina de Alquimia 104 não teve a lista de alunos aprovados.
 
 Portanto, você deverá mostrar a frase 'Approved: ' junto com o nome do aluno e a sua nota, para os alunos que foram aprovados (grade ≥7).
 
 Lembre-se de ordenar a lista pela maior nota.
 
 Esquema
 students
 Coluna	    Tipo
 id (PK)    integer
 name	    varchar
 grade	    numeric
 
 
 Tabelas
 students
 id	name	            grade
 1	Terry B. Padilla	7.3
 2	William S. Ray	    0.6
 3	Barbara A. Gongora	5.2
 4	Julie B. Manzer	    6.7
 5	Teresa J. Axtell	4.6
 6	Ben M. Dantzler	    9.6
 
 
 Exemplo de Saída
 name	                        grade
 Approved: Ben M. Dantzler	    9.6
 Approved: Terry B. Padilla	    7.3
 */
/*
 Meu Resultado:
 */
SELECT
    'Approved: ' || name,
    grade
FROM
    students
WHERE
    grade >= 7
ORDER BY
    grade DESC;