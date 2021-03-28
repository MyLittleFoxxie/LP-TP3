--Código de Amanda Oliveira e Vitor Raposo sobre um quiosque de saque eletrônico que entrega o menor número de cédulas da menor para a maior para um valor qualquer determinado.
--recebe um inteiro e retorna uma lista de inteiros
trocar :: Int -> [Int]
--devolve uma lista vazia quando o valor a ser trocado é nulo
trocar 0 = []
--a é o valor de retirada, chama a trocar com recursividade e concatena ela com os valores das cédulas, fazendo com que seja dividido do maior para o menor mas seja concatenado do menor para o maior.
trocar  a
    | (a >= 100) = trocar (a-100)++[100]
    | (a >= 50) = trocar (a-50)++[50]
    | (a >= 10) = trocar (a-10)++[10]
    | (a >= 5) = trocar (a-5)++[5]
    | (a >= 1) = trocar (a-1)++[1]
    | otherwise = []

