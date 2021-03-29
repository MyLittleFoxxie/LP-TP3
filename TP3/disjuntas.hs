--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre checar se duas listas sao disjuntas

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
--Caso o elemento x de uma lista seja diferente que o y de outra, percorrer o resto da lista
--Caso contrario, retornar False
disjuntas (x : xs) (y : ys)
  | x < y = disjuntas xs (y:ys)
  | x == y = False
  | x > y = disjuntas (x:xs) ys
