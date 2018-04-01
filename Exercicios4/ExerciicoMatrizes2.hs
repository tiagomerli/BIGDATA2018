--Exercicio Matrizes 2	
{--Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.--}

somaDiagonalPrincipal xs = sum $ map head $ zipWith drop [0..] xs

matriz = [[ 2,4,6,8],[ 10,12,14,16],[18,20,22,24],[26,28,30,32]]

-- Matriz
--  2  4  6  8 
-- 10 12 14 16 
-- 18 20 22 24 
-- 26 28 30 32 

main = do
  print ("---- Exercicio Matrizes 2 --------------")

  print (zipWith drop [0..] matriz) --Elimina o primeiro elemento de cada linha 
  print (map head $ zipWith drop [0..] matriz) -- Retorna o primeiro elemento (diag principal) de cada linha
  print (sum $ map head $ zipWith drop [0..] matriz) -- soma os elementos retonados
  
  print (somaDiagonalPrincipal matriz)