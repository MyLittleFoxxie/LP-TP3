--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

primo :: Int -> Bool
primo 1 = False
primo 2 = True
primo n = isPrimo n (n-1)

isPrimo _ 1 = True
isPrimo n t = if (n `rem` t) == 0 then False else isPrimo n (t-1)