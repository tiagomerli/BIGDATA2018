--Exercicio Matrizes 1	
{--Exercício 01: Faça uma função que gere uma matriz identidade de tamanho n.--}

matrizIdentidade :: Int -> [[Int]]
matrizIdentidade x = [ [fromEnum $ a == b | a <- [1..x]] | b <- [1..x]]

main = do
  print ("---- Exercicio Matrizes 1 --------------")
  print(matrizIdentidade 10) --Matriz N=10 
  print(matrizIdentidade 2)  --Matriz N=2
  print(matrizIdentidade 5)  --Matriz N=5