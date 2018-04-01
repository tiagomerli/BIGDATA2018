--Exercício Listas 4
{--Exercício 04: Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)--}

fibonnaci = 1 : 2 : prox fibonnaci
  where
    prox (x : t@(y:resto)) = (x+y) : prox t
    
{--Além da notação (y:resto) podemos também referenciar o segundo elemento da lista com (x:t@(y:rest'o)), na lista [1, 2, 3, 4, 5] esse padrão faz com que x = 1, t = [2,3,4,5], y = 2, resto = [3, 4, 5].--}

somaFibonacci :: Int
somaFibonacci = sum [ x | x <- takeWhile (<= 4000000) (take 50 fibonnaci), even x]

--even X - Considera apenas os valores pares
-- Soma os valore spares ate que o elememto seja menor qeu 4000000 (takeWhile)


main = do
    print ("---- Exercicio Listas 4 --------------")
    print(somaFibonacci)

