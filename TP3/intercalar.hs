--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre intercalar, em ordem crescente, os elementos de duas listas

--Funcao para ordenar uma lista
qsort :: [Int] -> [Int]
qsort [] = []
qsort (a:x) = qsort [ b | b <- x, b <= a ]
              ++ [a] ++
              qsort [ b | b <- x, b > a ]

--Funcao para concatenar duas listas
juntar :: [Int] -> [Int] -> [Int]
juntar [] _ = []
juntar x y = x ++ y

--Concatena e ordena duas listas em uma
intercalar :: [Int] -> [Int] -> [Int]
intercalar x y = qsort(juntar x y)
