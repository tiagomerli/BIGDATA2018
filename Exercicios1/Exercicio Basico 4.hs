---- Exercicio Basico 4 --------------
mult35 :: Integral a => a -> Bool
mult35 x
  | isDiv3 && isDiv5 = True
  | otherwise = False 
  where 
    isDiv3 = (x `rem` 3 == 0 )
    isDiv5 = (x `rem` 5 == 0 )

main = do
  print ("---- Exercicio Basico 4 --------------")
  print (mult35 9)
  print (mult35 10)
  print (mult35 15)

