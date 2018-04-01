--Exercicio Matrizes 3	
{--xercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.--}

somaDiagonalPrincipal xs = sum $ map head $ zipWith drop [0..] (map reverse xs)

matriz = [[ 2,4,6,8],[ 10,12,14,16],[18,20,22,24],[26,28,30,32]]

-- Matriz
--  2  4  6  8 
-- 10 12 14 16 
-- 18 20 22 24 
-- 26 28 30 32 

main = do
  print ("---- Exercicio Matrizes 3 --------------")

  print (zipWith drop [0..] (map reverse matriz)) --Elimina o primeiro elemento de cada linha REVERSA
  print (map head $ zipWith drop [0..] (map reverse matriz)) -- Retorna o primeiro elemento (diag principal) de cada linha REVERSA
  print (sum $ map head $ zipWith drop [0..] (map reverse matriz)) -- soma os elementos retonados REVERSOS
  
  print (somaDiagonalPrincipal matriz)