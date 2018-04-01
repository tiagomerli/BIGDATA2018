---- Exercicio Basico 12 --------------


listaInteiro texto = [ read [x] :: Int | x<- texto ]

main = do
  print ("---- Exercicio Basico 12 --------------")
  print (listaInteiro "0123456789")
