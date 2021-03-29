--Código de Amanda Oliveira e Vitor Raposo que verifica se um número é perfeito
--recebe um inteiro e retorna um booleano
perfeito :: Int -> Bool
--zero não é um número perfeito pois segundo euclides o primeiro número perfeito é o 6
perfeito 0 = False
--chama a função confere que retorna se é perfeito ou não
perfeito a = confere a
--recebe um inteiro e retorna uma lista de inteiros
divisores :: Int -> [Int]
--preenche a lista com os divisores de um número
divisores a = [b| b <- [1..(a-1)],a `mod` b == 0]
--recebe uma lista de inteiro e retorna um inteiro
soma :: [Int] -> Int
--uma lista vazia retorna o número zero que é o único número que não tem nenhum divisor
soma [] = 0
--faz a soma da lista de divisores obtidas na função acima
soma (b:bs) = b + soma(bs)
--recebe um inteiro e retorna um booleano
confere :: Int -> Bool
--confere se um numero é iguala  soma de seus divisores e retorna true para verdadeiroe  false para falso
confere a 
    | a == soma(divisores a) = True
    | otherwise = False
