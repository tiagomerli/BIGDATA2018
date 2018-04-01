--Exercício Listas 5
{--Exercício 05: Faça uma função para calcular o produto escalar entre dois vetores--}


produtoEscalar :: [Integer] -> [Integer] -> Integer
produtoEscalar x y = sum $ zipWith (*) x y

-- zipWith = Multiplica a combinação de cada elemento de X e Y 
--  sum = Soma cada uma das combinações geradas 

main = do
    print ("---- Exercicio Listas 5 --------------")
    print (produtoEscalar [9,8,7]  [6,5,4])