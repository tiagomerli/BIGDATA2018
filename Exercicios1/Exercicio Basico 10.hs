---- Exercicio Basico 10 --------------
bissexto :: Integral a => a -> Bool
bissexto ano
  | isDiv 400 = True
  | isDiv 4 && not (isDiv 100) = True
  | otherwise = False 
  where 
    isDiv n = (ano `rem` n == 0 )
    
    
main = do
  print ("---- Exercicio Basico 10 --------------")
  let listaBissexto = [ x | x <- [1..2018], bissexto x == True]
  let metadeLista = length listaBissexto `div` 2
  let (xs, ys) = splitAt metadeLista listaBissexto 
  print(xs) --Metade 1 
  print(ys) --Metade 2
