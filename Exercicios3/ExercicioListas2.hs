--Exercício Listas 2


divisivel20 :: Integer -> Bool
divisivel20 x
  | (tamanho==20) = True --somente se o numero for divisivel pelos 20 elementos
  | otherwise = False
   where 
     tamanho = length [ n |  n <- [1..20], x `mod` n  == 0]

projectEuler5 :: Integer -> Integer
projectEuler5 x = foldr1 lcm [11..x]
-- Focando em custo computaciomnal, nao eh necessario fazer calcular lcm de 1..10
    
main = do
    print ("---- Exercicio Listas 2 --------------")
    let ret = projectEuler5 20
    print(ret)
    print(divisivel20 $ projectEuler5 20)

