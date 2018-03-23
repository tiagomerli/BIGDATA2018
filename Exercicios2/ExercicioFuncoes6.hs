--Exercício Funcoes 5
import Data.Char (digitToInt) --transforma cada digito em elemento de lista numerico

somaDigitos :: Int -> Int
somaDigitos n = sum $ map digitToInt $ show n --transforma cada digito em um item numerico de uma lista e depois soma todos eles


persisteDigito :: Int -> Int -> Int
persisteDigito x c
    | somaDigitos x > 10 = persisteDigito (somaDigitos x) (c+1) -- enquanto a persistencia for maior que 10, continua somando os digitos
    | otherwise = c 

main = do
    print ("---- Exercicio Funcoes 5 --------------")
    let i = 1
    print (somaDigitos 12345) -- Soma da 15, depois soma da 6
    print (persisteDigito 12345 i) --portanto 2 persistencias aditivas

