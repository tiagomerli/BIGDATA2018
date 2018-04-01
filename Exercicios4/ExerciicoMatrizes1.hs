--Exercicio Matrizes 1	
{--Exercício 01: Faça uma função que gere uma matriz identidade de tamanho n.--}

-- Gera matriz identidade de tamanho n
-- quando j for igual a i, retorna a posicao de True (que é igual 1), se forem diferentes, retorna a posicao de False (que é igual a 0)
matrizIdentidade :: Int -> [[Int]]
matrizIdentidade n = [ [fromEnum $ i == j | i <- [1..n]] | j <- [1..n]]

main = do
  print ("---- Exercicio Matrizes 1 --------------")
  print(matrizIdentidade 10) --Matriz N=10 
  print(matrizIdentidade 2)  --Matriz N=2
  print(matrizIdentidade 5)  --Matriz N=5