/* 
 Uma empresa de investimentos deseja calcular o payback de seus clientes ao descobrir qual será o mês em que o acumulado das operações do empreendimento equivalem ou são superiores ao investimento inicial. Por exemplo, o cliente Lucas investiu 1000$ e apenas no terceiro mês obteve o seu payback, já que a soma de todas as suas operações foi superior ao seu investimento. Por outro lado, o cliente Daniel não conseguiu atingir seu payback já que seu investimento foi de 500$ e a soma de todas as suas operações foi 230$. Você precisa mostrar o nome do cliente, o investimento inicial, qual o mês do payback e o valor do retorno (valor acumulado - valor investimento inicial). Além disso, você deve mostrar o resultado ordenado do maior para o menor retorno.
 
 Esquema
 clients
 Coluna	        Tipo
 id (PK)	    integer
 name	        varchar (50)
 investment	    numeric  
 
 
 operations
 Coluna	        Tipo
 id (PK)	    integer
 client_id (FK)	integer
 month	        integer
 profit	        numeric
 
 
 Tabelas
 clients
 id	    name	    investment
 1	    Daniel	    500
 2	    Oliveira	2000
 3	    Lucas	    1000  
 
 
 operations
 id	    client_id	month	profit
 1	    1	        1	    230
 2	    2	        1	    1000
 3	    2	        2	    1000
 4	    3	        1	    100
 5	    3	        2	    300
 6	    3	        3	    900
 7	    3	        4	    400
 
 
 Exemplo de saída
 name	    investment	month_of_payback	return
 Lucas	    1000	    3	                300
 Oliveira	2000	    2	                0
 */
/*
 Meu Resultado:
 */
select
    clients.name,
    clients.investment,
    CEILING(
        (
            clients.investment / AVG(DISTINCT operations.profit)
        )
    ) as month_of_payback,
    (SUM(operations.profit) - clients.investment) as return
from
    clients
    inner join operations on clients.id = operations.client_id
where
    operations.month in (1, 2, 3)
group by
    clients.id
having
    (SUM(operations.profit) - clients.investment) >= 0
ORDER BY
    return desc;