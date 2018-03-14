---- Exercicio Basico 5 --------------
exec5 ::  Integer -> Bool
exec5 x
  | (isDiv2 && x > 1) || ( x < -1)  = True
  | otherwise = False 
  where 
    isDiv2 = (x `rem` 2 == 0 )
    
main = do
  print ("---- Exercicio Basico 5 --------------")
  let numero = 2
  print (exec5 numero)
  let numero = 3
  print (exec5 numero)
  let numero = -1
  print (exec5 numero)
  let numero = -2
  print (exec5 numero)
  let numero = -3
  print (exec5 numero)
