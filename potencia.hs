--Código de Amanda Oliveira e Vitor Raposo sobre potência
--recebe 2 inteiros e retorna 1 inteiros
potencia :: Int -> Int -> Int
-- potencia de qualquer número elevado a zero é 1
potencia _ 0 = 1
--potencia com recursividade
potencia a b = a * potencia a (b-1)
