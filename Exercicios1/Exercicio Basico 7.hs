---- Exercicio Basico 7 --------------
senoDiv2 :: Double -> (Double, Double)
senoDiv2 x = (x1, x2)
  where 
    identidade i = sqrt((1-cos(i))/2)
    x1 = identidade x
    x2 = -identidade x

main = do
  print ("---- Exercicio Basico 7 --------------")
  let numero = 1.1
  print (senoDiv2 numero )
  let numero = pi
  print (senoDiv2 numero )
  let numero = -1
  print (senoDiv2 numero )
