/*
 O Banco Central de Financiamentos perdeu vários registros após uma falha no servidor que ocorreu no mês de Outubro. As datas de cobrança das parcelas foram perdidas. Porém uma cópia de segurança foi encontrada contendo as informações sobre as datas de pagamento das parcelas dos clientes.
 
 Por tanto, o Banco pede a sua ajuda para selecionar os nomes e o dia do mês que cada cliente deve pagar sua parcela.
 
 OBS: Obrigatoriamente o dia do mês precisa ser um inteiro.
 
 Esquema
 loan
 Coluna	    Tipo
 id (PK)	integer
 name	    varchar
 value	    numeric
 payday	    timestamp (ISO YMD)
 Tabelas
 loan
 id	name        	    value	    payday
 1	Cristian Ghyprievy	3000.50	    2017-10-19
 2	John Serial	        10000	    2017-10-10
 3	Michael Seven	    5000.40	    2017-10-17
 4	Joana Cabel	        2000	    2017-10-05
 5	Miguel Santos	    4050	    2017-10-20
 
 
 Exemplo de Saída
 name	                day
 Cristian Ghyprievy	    19
 John Serial	        10
 Michael Seven	        17
 Joana Cabel	        5
 Miguel Santos	        20
 */
/*
 Meu Resultado: 
 */
SELECT
    name,
    CAST(
        extract(
            day
            from
                payday
        ) as INTEGER
    ) as day
FROM
    loan;