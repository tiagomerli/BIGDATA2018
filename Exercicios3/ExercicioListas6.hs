--Exercício Listas 6
{--Exercício 06:Crie a função collatz x que retorna x/2 se x for par e (3x+1) se for ímpar--}


collatz :: Integer -> Integer
collatz x
  | even x    = (x `div` 2)
  | otherwise = ((3*x)+1)

main = do
    print ("---- Exercicio Listas 6 --------------")
    print (collatz 10)
    print (collatz 11)