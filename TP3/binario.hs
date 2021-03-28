--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

binario :: Int -> [Int]
binario 0 = [0]
binario n = binario ( n `quot` 2 ) ++ [ n `rem` 2 ]