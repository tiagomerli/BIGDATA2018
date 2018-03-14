---- Exercicio Basico 8 --------------
bissexto :: Integral a => a -> Bool
bissexto ano
  | isDiv 400 = True
  | isDiv 4 && not (isDiv 100) = True
  | otherwise = False 
  where 
    isDiv n = (ano `rem` n == 0 )
    
    
main = do
  print ("---- Exercicio Basico 8 --------------")

  let listaBissexto = [ x | x <- [1..2018], bissexto x == True]

  print (listaBissexto)
