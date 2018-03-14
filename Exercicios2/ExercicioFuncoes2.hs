--Exercício Funcoes  2

ehTriangulo :: Int -> Int -> Int -> Bool
ehTriangulo a b c 
  | (lado1 && lado2 && lado3 ) = True -- Somente se todos os lados sao possíveis
  | otherwise = False
  where
      verificaLado x y z = ( abs(y-z) < x && x < (y+z) )
      lado1 = verificaLado a b c --Aplica a regra para cada lado
      lado2 = verificaLado b a c --Aplica a regra para cada lado
      lado3 = verificaLado c a b --Aplica a regra para cada lado

tipoTriangulo :: Int -> Int -> Int -> String
tipoTriangulo a b c 
  | (ehTriangulo a b c && ehIsosceles a b c) = "Isosceles"
  | (ehTriangulo a b c && ehEquilatero a b c) = "Equilatero"
  | (ehTriangulo a b c && ehEscaleno a b c) = "Escaleno"
  | otherwise = "Triangulo invalido"
  where
      ehIsosceles x y z = ( x == y  && y == z )
      ehEquilatero x y z = ( x == y || y == z  || z == x)
      ehEscaleno x y z = ( x /= y && y /= z  && z /= x)

main = do
  print ("---- Exercicio Funcoes 2 --------------")
  print (tipoTriangulo 5 5 1)
  print (tipoTriangulo 0 0 0)
  print (tipoTriangulo 3 3 3)
  print (tipoTriangulo 5 7 8)