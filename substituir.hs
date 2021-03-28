--Código de Amanda Oliveira e Vitor Raposo sobre substituir todos os elementos de um valor por outro em uma lista
--recebe 2 inteiros e uma lista de inteiros e retorna outra lista de inteiros
substituir :: Int -> Int -> [Int] -> [Int]
--qualquer lista vazia retorna outra lista vazia
substituir _ _ [] = []
--definindo a função que troca o a por b com recursividade
substituir a b (aux:lista)
    | aux == a = (b:(substituir a b lista))
--cláusula de outra forma. Se não for a, vai pular pro pŕoximo elemento da lista
    | otherwise = (aux:(substituir a b lista))
