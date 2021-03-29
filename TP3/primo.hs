--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre checar se um numero seria primo

primo :: Int -> Bool
primo 1 = False
primo 2 = True
primo n = isPrimo n (n-1)

--divide um numero n por todos os numeros iguais e menores do que ele, olhando sempre o resto
isPrimo _ 1 = True
isPrimo n t = if (n `rem` t) == 0 then False else isPrimo n (t-1)
