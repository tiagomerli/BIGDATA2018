---- Exercicio Basico 6 --------------
div2d :: Integer ->  Double
div2d x = (fromIntegral x / 2)
-- Motivo do uso do fromIntegral: converte de um inteiro para um tipo da classe Num, pertinente para a expressao a ser calculada

main = do
  print ("---- Exercicio Basico 6 --------------")
  print (div2d 10 )
  print (div2d 5 )
  print (div2d 1 )