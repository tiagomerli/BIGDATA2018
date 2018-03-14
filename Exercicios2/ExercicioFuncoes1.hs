
--Exercício Funcoes  1

ehTriangulo :: Int -> Int -> Int -> Bool
ehTriangulo a b c 
  | (lado1 && lado2 && lado3 ) = True -- Somente se todos os lados sao possíveis
  | otherwise = False
  where
      verificaLado x y z = ( abs(y-z) < x && x < (y+z) )
      lado1 = verificaLado a b c -- Aplica a regra para cada lado
      lado2 = verificaLado b a c -- Aplica a regra para cada lado
      lado3 = verificaLado c a b -- Aplica a regra para cada lado

main = do
  print ("---- Exercicio Funcoes 1 --------------")
  print (ehTriangulo 1 5 1)
  print (ehTriangulo 0 0 0)
  print (ehTriangulo 3 3 3)