--problema 1
average3Numbers :: (Floating a)=>a->a->a->a--Para este problema se declaran 3 valores de entrada y 1 de salida de tipo flotante
average3Numbers x y z=(x+y+z)/3--y en la operacion simplemente se suman y se dividen sobre 3 para determinar el promedio

--problema 2
isLastDigit3 :: (Integral a)=>a->Bool--se declara 1 valor de tipo integral de entrada y un valor booleano de salida
isLastDigit3 x
    | ((rem x 10)==3)=True--se usa la funcion rem y se pone una igualacion a 3 para la comprobacion
    | otherwise = False

--problema 3
contarNum :: (Integral a)=>a->a --Para el problema 3 se creo otra funcion para contar los numeros de manera recursiva
contarNum 0=0 
contarNum x=1 + contarNum (div x 10) --se usa la funcion div para reducir el numero en decenas y asi contar

has3Digits :: (Integral a)=>a->Bool --Para la funcion se toma un valor de entrada numerico y un booleano de salida
has3Digits x
    | contarNum x==3 = True --se usa la funcion antes creada para contar el numero ingresado
    | otherwise = False

--problema 4
isNegative x =x<0 --Se creo una funcion sencilla que resive un numero y hace la comparacion con 0 para saber si es negativo

--problema 5
sum2Digits :: (Integral a)=>a->a --Para este problema se recibe un numero y se retorna otro 
sum2Digits x
    |x>=100 || x<10=error "El numero no es de dos digitos" --Caso por si el numero no es de 2 digitos
sum2Digits x= (mod x 10) + (div x 10) --Se usa mod para obtener el primer digito y div para el segundo y se suman

--problema 6
even2Digits :: (Integral a)=>a->Bool --Para esta funcion se recibe un numero y se regresa un booleano
even2Digits x
    |x>=100 || x<10=error "El numero no es de dos digitos" --Caso por si el numero no esta dentro del rango
even2Digits x=( (even (mod x 10)) && (even (div x 10))) --Y aca se raliza lo mismo que en la anterior funcion solo que se agrega even para revisar si son pares

--problema 7
elimina :: Integer -> [Integer] -> [Integer]--Para el problema 7 no sabia como realizarlo y buscando encontre un ejemplo similar
elimina n xs = [ x | x <- xs, mod x n /= 0 ]--Antes de checar si un numero es primo se crearon 3 funciones que esta elimina a los multiplos de los numeros n

criba :: [Integer] -> [Integer]--Esta funcion los guarda revisa los numeros de un arreglo y los guarda en otro
criba []     = []
criba (n:ns) = n : criba (elimina n ns)

primos :: [Integer]--Finalmente esta funcion manda a llamar a la funcion anterior para que se cree la lista de numeros primos
primos = criba [2..]

isPrimeNumber :: Integer->Bool--Y la funcion revisa si es primo el numero
isPrimeNumber x= head (dropWhile (< x) primos) == x

--problema 8
isEvenAndPrimeNumber x= (even x) && (isPrimeNumber x) --Se uso la funcion even y la anterior funcion para saber si un numero es primo

--problema 9
isMultiple :: (Integral a)=>a->a->Bool --Para esta funcion se reciben 2 numeros y se regresa un booleano
isMultiple x y= mod x y==0 --Para hacer la comprobacion de que si x es multiplo de y se uso la funcion mod 

--problema 10
isEqual2Digits :: (Integral a)=>a->Bool --Para esta funcon se toma un numero y se regresa un booleano
isEqual2Digits x
    | x>=100 || x<10 = error "Sobrepasa el limite" --Caso por si el numero no es de 2 digitos
isEqual2Digits x = (mod x 10) == (div x 10) --Para la comprobacion se uso el mismo metodo que en los anteriores

--problema 11
higher :: (Integral a)=>a->a->a->a --Para esta funcion se reciben 3 numero y se retorna 1
higher x y z
    | x>y && x>z=x --Se hacen las comparaciones para saber que numero es el mayor de los 3 ingresados
    | y>x && y>z=y
    |otherwise =z

--problema 12
isEvenSum2Number :: (Integral a)=>a->a->Bool --Para esta funcion se reciben 2 numeros y se retorna un booleano
isEvenSum2Number x y= even (x+y) --Y solamente regresa si la suma de los dos numeros es par con la funcion even

--problema 13
sum2Digit2Number :: (Integral a)=>a->a->a --Para esta funcion se reciben 2 numeros y se retorna 1
sum2Digit2Number x y
    |x>=100 || x<10=error "Un numero no es de dos digitos" --Casos para cuando cualquiera de los 2 numeros no sean de 2 digitos
    |y>=100 || y<10=error "Un numero no es de dos digitos"
sum2Digit2Number x y= ((mod x 10) + (div x 10))+((mod y 10) + (div y 10)) --la suma  

--problema 14
sum3Digit :: (Integral a)=>a->a --Para esta funcion se recibe 1 numero y se retorna 1
sum3Digit x
    |x<100 || x>=1000 =error "El numero no es de tres digitos" --Caso por si el numero no es de 3 digitos
sum3Digit x=(div x 100)+(div (mod x 100) 10)+(mod (mod x 100) 10) --Se realiza la suma de los 3 digitos del numero

--problema 15
equal3Digit :: (Integral a)=>a->Bool --En esta funcion se recibe 1 numero y se retorna 1 booleano
equal3Digit x
    |x<100 || x>=1000 =error "El numero no es de tres digitos" --caso por si el numero no es de 3 digitos
equal3Digit x
    | (div x 100)==(div (mod x 100) 10)=True --Caso en donde se compara el primer digito con el segundo
    | (div x 100)==(mod (mod x 100) 10)=True --El primero con el tercero
    | (div (mod x 100) 10)==(mod (mod x 100) 10)=True --Y el segundo con el tercero
    | otherwise =False

--problema 16
positionHigher3Digits :: (Integral a)=>a->String --Para esta funcion se recibe un numero y se retorna 1 String
positionHigher3Digits x
    |x<100 || x>=1000 =error "El numero no es de tres digitos"--Caso por si el numero no es de 3 digitos
positionHigher3Digits x --Codicionantes para ver cual de los tres digitos es el mayor
    | (div x 100)>(div (mod x 100) 10) && (div x 100)>(mod (mod x 100) 10)="El numero de la posicion 1 es el mas grande"
    | (div (mod x 100) 10)>(div x 100) && (div (mod x 100) 10)>(mod (mod x 100) 10)="El numero de la posicion 2 es el mas grande"
    | otherwise ="El numero de la posicion 3 es el mas grande"

--problema 17
palindrome a = a == reverse a --problema de palindrome solucionado usando la funcion reverse

--problema 18
safeDivision :: Float->Float->Float --Para esta funcion se reciben 2 numeros de tipo flotante y se retorna 1 de la misma naturaleza
safeDivision _ 0=error "no se puede dividir entre 0"--Caso para 0
safeDivision x y= x/y--Funcion de division

--problema 19
xor :: Bool->Bool->Bool --Funcion de xor
xor True True =True --Cada caso para la funcion xor
xor True False =True
xor False True =True
xor False False =False

--problema 20
distance (x1,y1) (x2,y2)= sqrt(((x1-x2)^2)+((y1-y2)^2))--Esta funcion recibe 2 coordenadas y retona 1 valor numerico
                                                       --, se hace uso de la formula de la distancia entre 2 puntos