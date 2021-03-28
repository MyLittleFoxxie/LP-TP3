--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

qsort :: [Int] -> [Int]
qsort [] = []
qsort (a:x) = qsort [ b | b <- x, b <= a ]
              ++ [a] ++
              qsort [ b | b <- x, b > a ]

juntar :: [Int] -> [Int] -> [Int]
juntar [] _ = []
juntar x y = x ++ y

intercalar :: [Int] -> [Int] -> [Int]
intercalar x y = qsort(juntar x y)
