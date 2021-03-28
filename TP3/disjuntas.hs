--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
disjuntas (x : xs) (y : ys)
  | x < y = disjuntas xs (y:ys)
  | x == y = False
  | x > y = disjuntas (x:xs) ys
