--Código de Amanda Oliveira e Vitor Raposo sobre uma lista de inteiros ser palíndromo
--recebe uma lista de inteiros e retorna outra lista de inteiros
refletida :: [Int] -> [Int]
--Concatena a ultima posição com a lista [a], fazendo com que a ultima posição da nova lista seja a antepenultima posição da anterior
refletida (a:b) = refletida b ++ [a]
--se uma lista é vazia a lista refletida dela também é vazia
refletida [] = [] 
--recebe 1 lista de inteiros e retorna 1 booleano
palindromo :: [Int] -> Bool
--Se uma lista é vazia ela não é palindromo pois não tem nenhum elemento para comparar
palindromo [] = False
--confere se um elemento da lista é igual ao elemento da lista refletida
palindromo c
    |(c == refletida c) = True
    |otherwise = False

