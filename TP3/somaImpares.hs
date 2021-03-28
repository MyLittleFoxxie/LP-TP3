--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

somaImpares :: [Int] -> Int

somaImpares [] = 0
somaImpares (x:xs) = if (mod x 2 == 0) then somaImpares xs else x + somaImpares xs