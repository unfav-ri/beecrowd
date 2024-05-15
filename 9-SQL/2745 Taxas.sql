/*
 Você está indo para uma reunião no plano Internacional de Taxas Pessoais, sua proposta é: toda pessoa com renda acima de 3000 deve pagar uma taxa para o governo, essa taxa é 10% do que ela ganha.
 
 Portanto, mostre o nome da pessoa e o valor que ela deve pagar para o governo com a precisão de duas casas decimais.
 
 Esquema
 people
 Coluna	    Tipo
 id (PK)	integer
 name	    varchar
 salary	    numeric
 
 
 Tabelas
 people
 id	name	            salary
 1	James M. Tabarez	883
 2	Rafael T. Hendon	4281
 3	Linda J. Gardner	4437
 4	Nicholas J. Conn	8011
 5	Karol A. Morales	2508
 6	Lolita S. Graves	8709
 
 
 Exemplo de Saída
 name	            tax
 Rafael T. Hendon	428.10
 Linda J. Gardner	443.70
 Nicholas J. Conn	801.10
 Lolita S. Graves	870.90
 */
/*
 Meu Resultado:
 */
SELECT
    name,
    ROUND((salary * 0.1) :: numeric, 2) AS tax
FROM
    people
WHERE
    salary > 3000;