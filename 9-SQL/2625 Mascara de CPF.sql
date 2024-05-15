/*
 Os diretores do setor de comunicação da sua empresa querem um relatório sobre os dados dos clientes físicos que estão cadastrados no banco de dados. Porem o antigo relatório teve um problema. Os dados do CPF dos clientes vieram sem a máscara.
 
 Por isso seu trabalho agora é selecionar todos os CPFs de todos os clientes, e aplicar uma máscara sobre o retorno dos dados.
 
 A máscara do CPF é parecida com: '000.000.000-00'.
 
 Esquema
 customers
 Coluna	        Tipo
 id (PK)	    numeric
 name	        character varying (255)
 street	        character varying (255)
 city	        character varying (255)
 state	        char (2)
 credit_limit	numeric  
 
 
 natural_person
 Coluna	                Tipo
 id_customers (FK)	    numeric
 cpf	                char (14)
 
 
 Tabelas
 customers
 id	name	                                    street	                                city	        state	credit_limit
 1	Nicolas Diogo Cardoso	                    Acesso Um	                            Porto Alegre	RS	    475
 2	Cecília Olivia Rodrigues	                Rua Sizuka Usuy	                        Cianorte	    PR	    3170
 3	Augusto Fernando Carlos Eduardo Cardoso	    Rua Baldomiro Koerich	                Palhoça	        SC	    1067
 4	Nicolas Diogo Cardoso	                    Acesso Um	                            Porto Alegre	RS	    475
 5	Sabrina Heloisa Gabriela Barros	            Rua Engenheiro Tito Marques Fernandes	Porto Alegre	RS	    4312
 6	Joaquim Diego Lorenzo Araújo	            Rua Vitorino	                        Novo Hamburgo	RS	    2314  
 
 
 natural_person
 id_customers	cpf
 1	            26774287840
 2	            97918477200
 
 
 Exemplo de saída
 CPF
 267.742.878-40
 979.184.772-00
 */
/*
 Meu Resultado: 
 */
SELECT
    CONCAT(
        SUBSTRING(cpf, 1, 3),
        '.',
        SUBSTRING(cpf, 4, 3),
        '.',
        SUBSTRING(cpf, 7, 3),
        '-',
        SUBSTRING(cpf, 10, 2)
    ) AS CPF
FROM
    natural_person;