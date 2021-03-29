--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre linearização de uma lista de inteiros 


--recebe uma lista de listas de inteiros e retorna uma lista de inteiros
linearizar :: [[Int]] -> [Int]
-- uma lista vazia retornará outra lista vazia
linearizar [] = []
--concatena a primeira lista com a próxima e assim sucessivamente com a reciursividade da linearizar
linearizar (a:b) = a++linearizar b

