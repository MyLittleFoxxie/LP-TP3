--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

soma :: [Int] -> Int -> [Int]
soma [] aux = []
soma (x:xs) aux = (aux + x) : soma xs (aux + x)

somaParciais :: [Int] -> [Int]
somaParciais xs = soma xs 0

