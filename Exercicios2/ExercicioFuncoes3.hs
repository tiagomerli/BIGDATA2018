--Exercício Funcoes  3

etiope :: Integer -> Integer -> Integer
etiope m n = etiope' m n 0
  where 
    etiope' m n r 
      | (m==1)     = (r + n)
      | (even m)   = etiope' (m `div` 2) (n*2) r
      | otherwise  = etiope' (m `div` 2) (n*2) (n + r)


main = do
  print ("---- Exercicio Funcoes 3 --------------")
  print (etiope 3 3 )
  print (etiope 13 21 )
  print (etiope 13 21 )
  print (etiope 1 2 )
  print (etiope 2 2 )

