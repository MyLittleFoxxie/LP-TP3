--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre somar os elemntos impares de uma lista

somaImpares :: [Int] -> Int

--Caso o numero seja impar (divisao por modulo igual a 0), ele paticipa da soma acumulada
somaImpares [] = 0
somaImpares (x:xs) = if (mod x 2 == 0) then somaImpares xs else x + somaImpares xs
