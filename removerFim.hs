--Código de Amanda Oliveira e Vitor Raposo sobre remover os ultimos n elemenos de uma lista de inteiros
--recebe um inteiro e uma lista de inteiros e retorna uma lista de inteiros
removerFim :: Int -> [Int] -> [Int]
--remover qualquer elemento de uma lista vazia retornará uma lista vazia pois não tem nada pare remover nela
removerFim _ [] = []
--remover nenhum elemento (0) de uma lista retornará a mesma lista
removerFim 0 lista = lista
--remover n elementos da lista com recursividade
removerFim n lista = removerFim (n-1)(remove lista)

--recebe uma lista de inteiros e retorna outra lista de inteiros sem a ultima posição
remove :: [Int] -> [Int]
--remove qualquer coisa da lista fazendo ela virar vazia.
remove [_] = []
-- concatena a lista anterior com a lista vazia com recursividade
remove (a:lista) = [a]++remove(lista) 
