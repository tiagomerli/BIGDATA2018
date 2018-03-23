--Exercício Funcoes  4

primoComFuncao :: Integer -> Bool
primoComFuncao n = primoComFuncao' n (n-1)
  where 
    primoComFuncao' n r 
      | (n==1 || n==2)     = True --Numeros 1 e 2 sao primos 
      | (r==1 )            = True --O numero eh primo e foi dividido por (todos-1) 
      | (even n && n /= 2) = False -- se o numero for par > 2 não eh primo
      | (n `rem` r /= 0)   = primoComFuncao' n (r-1)
      | otherwise          = False


primoComLista :: Integer -> Bool
primoComLista n
  | (n==0 )         = False --Numero o nao eh primo
  | (n==1 || n==2)  = True  --Numeros 1 e 2 sao primos 
  | otherwise       = ehPrimo
  where
    ehPrimo = (null [ x |  x <- [2..n-1], n `mod` x  == 0]) -- verifica se a lista esta vazia, caso positivo eh primo pois foi divido por (todos -1)


main = do
  print ("---- Exercicio Funcoes 4 --------------")
  print (primoComFuncao 0 )
  print (primoComFuncao 1 )
  print (primoComFuncao 2 )
  print (primoComFuncao 5 )
  print (primoComFuncao 4 )
  print (primoComFuncao 13 )
  print (primoComFuncao 113 )

  print ("---------------------------------------")
  print (primoComLista 0 )
  print (primoComLista 1 )
  print (primoComLista 2 )
  print (primoComLista 5 )
  print (primoComLista 4 )
  print (primoComLista 13 )
  print (primoComFuncao 113 )