---- Exercicio Basico 3 --------------
mult5 :: Integral a => a -> Bool
mult5 x
  | isDiv5 = True
  | otherwise = False 
  where 
    isDiv5 = (x `rem` 5 == 0 )

main = do
  print ("---- Exercicio Basico 3 --------------")
  print (mult5 9)
  print (mult5 10)
  print (mult5 15)
