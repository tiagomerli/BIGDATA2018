--Exercício Listas 3


fibonnaci = 1 : 2 : prox fibonnaci
  where
    prox (x : t@(y:resto)) = (x+y) : prox t
    
{--Além da notação (y:resto) podemos também referenciar o segundo elemento da lista com (x:t@(y:rest'o)), na lista [1, 2, 3, 4, 5] esse padrão faz com que x = 1, t = [2,3,4,5], y = 2, resto = [3, 4, 5].--}

main = do
    print ("---- Exercicio Listas 3 --------------")
    print(take 50 fibonnaci)

