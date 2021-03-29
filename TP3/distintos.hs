--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre elementos distintos de uma lista


--recebe 1 lista de inteiros e retorna 1 booleano
distintos :: [Int] -> Bool
--Se uma lista é vazia,seus elementos são distintos
distintos [] = True
--confere se os elementos são distintos chamando a função verifica, que é uam função que verifica se cada elemento da lista é igual a algum outro dela.
distintos (a:lista)
    | verifica a lista = False
    | otherwise = distintos lista
--recebe um inteiro e uma lista de inteiros e retorna um booleano
verifica:: Int -> [Int]-> Bool 
-- se um elemento qualquer é comparado com uma lista vazia, eles não são distintos pois a lista vazia não tem elemento nenhum para ser comparado 
verifica _ [] = False
--verifica se um elemento b da lista é igual aos outros elementos dela
verifica lista (b:c)
    |  lista == b = True
    |  otherwise = verifica lista c