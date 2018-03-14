---- Exercicio Basico 11 --------------
concatena :: String -> String -> String
concatena a b = a ++ " " ++ b


main = do
  print ("---- Exercicio Basico 11 --------------")
  let concatenado = concatena "Hello" "World!"
  print(concatenado)
  let concatenado = concatena "Bom" "Dia!"
  print(concatenado)
