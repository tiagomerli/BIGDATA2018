---- Exercicio Basico 9B --------------
bissexto :: Integral a => a -> Bool
bissexto ano
  | isDiv 400 = True
  | isDiv 4 && not (isDiv 100) = True
  | otherwise = False 
  where 
    isDiv n = (ano `rem` n == 0 )
    
    
main = do
  print ("---- Exercicio Basico 9B --------------")

  let listaBissexto = [ x | x <- [1..2018], bissexto x == True]
  let tamanho = length listaBissexto - 10 

  -- Forma 1 - Com DROP - Remove todos elementos menos os 10 ultimos
  -- Remove todos os elementos, mantendo apenas os 10 últimos
  print (drop tamanho listaBissexto)

  -- Forma 2 - Com SplitAt: Divide a lista em 2 partes
  let (xs, ys) = splitAt tamanho listaBissexto 
  print(ys)
