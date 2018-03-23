--Exercício Listas 1

divisivel20 :: Integer -> Bool
divisivel20 x
  | (tamanho==20) = True --somente se o numero for divisivel pelos 20 elementos
  | otherwise = False
   where 
     tamanho = length [ n |  n <- [1..20], x `mod` n  == 0]
    
main = do
    print ("---- Exercicio Listas 1 --------------")
    print(divisivel20 20)
    print(divisivel20 2432902008176640000) --20!