--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira
--Código sobre mover os elementos de uma lista n casas

---Retorna uma lista com a segunda metade da lista original movida
arredarPrimeiraParte :: [Int] -> Int -> Int -> [Int]
arredarPrimeiraParte [] casas aux = []
arredarPrimeiraParte (x:xs) casas aux
  | casas > aux = arredarPrimeiraParte xs casas (aux + 1)
  | otherwise = [x] ++ arredarPrimeiraParte xs casas (aux + 1)

--Retorna uma lista com a primeira metade da lista original movida
arredarSegundaParte :: [Int] -> Int -> Int -> [Int]
arredarSegundaParte [] casas aux = []
arredarSegundaParte (x:xs) casas aux
  | casas > aux = [x] ++ arredarSegundaParte xs casas (aux + 1)
  | otherwise = arredarSegundaParte xs casas (aux + 1)

--Utiliza duas funcoes para divir uma lista em duas metades, mover os elementos dela e concatenar elas depois
shift :: Int -> [Int] -> [Int]
shift casas [] = []
shift casas x = (arredarPrimeiraParte x casas 0) ++ (arredarSegundaParte x casas 0)
