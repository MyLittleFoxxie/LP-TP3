--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre transformar um numero decimal binario


binario :: Int -> [Int]
binario 0 = [0]
--`quot` divide n descartando o resto da divisao (divisoes sucessivas por 2), enquanto `rem` somente retorna o resto (impar ou par)
binario n = binario ( n `quot` 2 ) ++ [ n `rem` 2 ]
