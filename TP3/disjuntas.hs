--Laboratório de Linguagens de Programação
--2020/02
--Vitor Raposo & Amanda Oliveira

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
disjuntas (x : xs) (y : ys)
  | x > y = disjuntas xs (y:ys)
  | x == y = False
  | x < y = disjuntas (x:xs) ys




disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
disjuntas(x : xs) (y : ys) = case compare x y of
  LT -> disjuntas xs (y : ys)
  EQ -> False
  GT -> disjuntas (x : xs) ys

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
disjuntas (x : xs) (y : ys)
  | x > y = disjuntas xs (y:ys)
  | x == y = False
  | x < y = disjuntas (x:xs) ys

disjuntas [4,2] [1,4]


nmap :: (t -> u -> z) -> [t] -> [u] -> z
nmap f [] _ = False
nmap f (x:xs) (y:ys) = if f x ys == False then False else if f xs ys == False then False else True



disjuntas :: Int -> [Int] -> Bool
disjuntas _ [] = False
disjuntas x (y:ys) = if x == y then False else disjuntas x ys

    | elem x ys = False

qsort :: [Int] -> [Int]
qsort [] = []
qsort (a:x) = qsort [ b | b <- x, b <= a ]
			  ++ [a] ++
			  qsort [b | b <- x, b > a ]
