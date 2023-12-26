/* O comando Where é utilizado para extrair informações especificas das Tabela de acordo com a condição */

SELECT coluna1, coluna2
FROM NomeTabela
WHERE condicao;

/* 
    OPERADORES PARA O WHERE

    =   IGUAL
    >   MAIOR QUE 
    <   MENOR QUE
    >=  MAIOR QUE OU IGUAL
    <=  MENOR QUE OU IGUAL
    <>  DIFERENTE DE 
    AND OPERADOR LÓGICO "E"
    OR  OPERADOR LÓGICO "OU"
*/

--! DESAFIO 1
/* A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção */

/* COMANDO */
SELECT *
FROM production.products
WHERE wheight > 500 AND wheight < 700
= 4 linhas

--! DESAFIO 2
/* Foi pedido pelo marketing uma relação de todos os empregados (employes) que são casados (single = solteiro, married = casados) 
    e são assalariados (salaried)
*/

/* COMANDO */
SELECT *
FROM person.person
WHERE married = 'M' AND SalariedFlag = 1
= 28 linhas

--! DESAFIO 3
/* Um usuario chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança */
/* (Teremos que usar a tabela person.person e depois a tabela person.emailaddress) */

/* COMANDO */
SELECT *
FROM person.person
WHERE FirstName = 'peter' AND LastName = 'Krebs'

/* Após filtrar, pegamos o Entidade ID para usar como filtro no próximo SQL*/
SELECT *
FROM person.emailaddress
WHERE EntityID = 26

RESULTADO = 'peter0@adventure-works.com'
