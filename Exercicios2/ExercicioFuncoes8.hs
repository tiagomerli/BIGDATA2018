--Exercício Funcoes 8
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n-1) (n*r)

elementoPascal :: Integer -> Integer -> Integer
elementoPascal n k = fatorial(n) `div` (fatorial(k) * fatorial(n-k))
    
    
main = do
    print ("---- Exercicio Funcoes 8 --------------")
    print(elementoPascal 10 3)
    print(elementoPascal 5 2)
    print(elementoPascal 10 0)