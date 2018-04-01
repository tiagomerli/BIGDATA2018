--Exercício Listas 7
{--Exercício 07: Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.--}

collatz :: Int -> [Int]
collatz 1 = [1] --retorna 1 
collatz x = x:proximo
  where proximo
            | even x    = collatz (x `div` 2) --par
            | otherwise = collatz (x * 3 + 1) --impar
--Calcula collatz e adiciona o resultado na lista
-- depois reclacula collatz ate chegar a 1 


collatzLen :: Int -> Int
collatzLen x = length (collatz x) 
--retorna o tamanho da lista aops a aplicacao de collatz
 

main = do
  print("---- Exercicio Listas 7 --------------")
  print (collatz 10)    --lista=[10,5,16,8,4,2,1]
  print (collatzLen 10) --tamanho=7
  print (collatz 11)    --lista=11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]
  print (collatzLen 11) --tamanho=15