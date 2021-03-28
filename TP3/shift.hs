--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

arredarPrimeiraParte :: [Int] -> Int -> Int -> [Int]
arredarPrimeiraParte [] casas aux = []
arredarPrimeiraParte (x:xs) casas aux
  | casas > aux = arredarPrimeiraParte xs casas (aux + 1)
  | otherwise = [x] ++ arredarPrimeiraParte xs casas (aux + 1)
  
arredarSegundaParte :: [Int] -> Int -> Int -> [Int]
arredarSegundaParte [] casas aux = []
arredarSegundaParte (x:xs) casas aux
  | casas > aux = [x] ++ arredarSegundaParte xs casas (aux + 1)
  | otherwise = arredarSegundaParte xs casas (aux + 1)
  
shift :: Int -> [Int] -> [Int]
shift casas [] = []
shift casas x = (arredarPrimeiraParte x casas 0) ++ (arredarSegundaParte x casas 0)
