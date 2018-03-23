--Exercício Funcoes 5
import Data.Char (digitToInt) --transforma cada digito em elemento de lista numerico

somaDigitos :: Int -> Int
somaDigitos n = sum $ map digitToInt $ show n --transforma cada digito em um item numerico de uma lista e depois soma todos eles

main = do
    print ("---- Exercicio Funcoes 5 --------------")
    print (somaDigitos 456)
    print (somaDigitos 112233445566778899)
    print (somaDigitos 1111111111111111)
    print (somaDigitos (5^20))
