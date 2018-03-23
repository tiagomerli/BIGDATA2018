--Exercício Funcoes 7
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n-1) (n*r)

coefBinomial :: Integer -> Integer -> Integer
coefBinomial n k = fatorial(n) `div` (fatorial(k) * fatorial(n-k))
    
    
main = do
    print ("---- Exercicio Funcoes 7 --------------")
    print(coefBinomial 10 3)
    print(coefBinomial 5 2)
    print(coefBinomial 10 0)