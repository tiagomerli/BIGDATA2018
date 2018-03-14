---- Exercicio Basico 2 --------------
mult3 :: Integral a => a -> Bool
mult3 x
  | isDiv3 = True
  | otherwise = False 
  where 
    isDiv3 = (x `rem` 3 == 0 )

main = do
  print ("---- Exercicio Basico 2 --------------")
  print (mult3 9)
  print (mult3 10)