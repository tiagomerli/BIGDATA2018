--Exercício Listas 8
{--Exercício 08: Encontre o número x entre 1 e 1.000.000 que tem a maior sequência de Collatz--}

collatz :: Int -> [Int]
collatz 1 = [1] --retorna 1 
collatz x = x:proximo
  where proximo
            | even x    = collatz (x `div` 2) --par
            | otherwise = collatz (x * 3 + 1) --impar
-- Calcula collatz e adiciona o resultado na lista
-- depois reclacula collatz ate chegar a 1 


collatzLen :: Int -> Int
collatzLen x = length (collatz x) 
--retorna o tamanho da lista apos a aplicacao de collatz

-- compara vetor (1,1) com o vetor resultante de (collatzLen n, n)
-- Foldl recebe o valor do comparaVetores e verifica um a um com o vetor xs, no caso, 1 a 1M
--comparaVetores :: [(Int,Int)] -> [(Int,Int)] -> (Int,Int)
comparaVetores x y = x `max` y

--calculaMaior :: [Int] -> (Int,Int)
calculaMaior xs = foldl comparaVetores (1,1) xs

-- Gera vetor com todos os indice de 1..1M e seus respectivos collatzLen
geraVetor :: Int -> [(Int,Int)]
geraVetor x = [ (collatzLen x, x) | x <- [1..x]]


main = do
    print("---- Exercicio Listas 8 --------------")
    --print(collatz 1)
    --print(collatz 1000000)
    print (calculaMaior $ geraVetor 1000000)
    

    
    