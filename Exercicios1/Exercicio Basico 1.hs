
--Exercício Basico 1

soma :: Num a => a -> a -> a
soma a b = a + b

multiplica :: Num a => a -> a -> a
multiplica a b = a * b

eleva :: Num a => a -> Int -> a
eleva a b = a ^ b

main = do
  print ("---- Exercicio Basico 1 --------------")
  
  print ("De acordo com as precedencias/ordem avaliacao de cada operador nao sera necessario parenteses em nenhuma:")
  print ("(^) :: infixr 8 ^  direita p/ esquerda")
  print ("(*) :: infixl 7 *  esquerda p/ direita")
  print ("(+) :: infixl 6 +  esquerda p/ direita")

  --2*3+5
  print (2*3+5)
  print ((2*3)+5)
  print (soma 5 $ multiplica 2 3) 
  --2+2*3+1
  print (2+2*3+1)
  print (2+(2*3)+1)
  print (soma 1 $ soma 2 $ multiplica 2 3)
  --3^4+5*2^5+1
  print (3^4+5*2^5+1)
  print ((3^4)+(5*(2^5))+1)
  print (soma 1 $ soma (eleva 3 4) $ multiplica 5 $ eleva 2 5)