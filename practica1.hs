--problema 1
average3Numbers :: (Floating a)=>a->a->a->a
average3Numbers x y z=(x+y+z)/3

--problema 2
isLastDigit3 :: (Integral a)=>a->Bool
isLastDigit3 x
    | ((rem x 10)==3)=True
    | otherwise = False

--problema 3
contarNum :: (Integral a)=>a->a
contarNum 0=0 
contarNum x=1 + contarNum (div x 10)

has3Digits :: (Integral a)=>a->Bool
has3Digits x
    | contarNum x==3 = True
    | otherwise = False

--problema 4
isNegative x =x<0

--problema 5
sum2Digits :: (Integral a)=>a->a
sum2Digits x
    |x>=100 || x<10=error "El numero no es de dos digitos"
sum2Digits x= (mod x 10) + (div x 10)

--problema 6
even2Digits :: (Integral a)=>a->Bool
even2Digits x
    |x>=100 || x<10=error "El numero no es de dos digitos"
even2Digits x=( (even (mod x 10)) && (even (div x 10)))

--problema 7
elimina :: Integer -> [Integer] -> [Integer]
elimina n xs = [ x | x <- xs, mod x n /= 0 ]

criba :: [Integer] -> [Integer]
criba []     = []
criba (n:ns) = n : criba (elimina n ns)

primos :: [Integer]
primos = criba [2..]

isPrimeNumber :: Integer->Bool
isPrimeNumber x= head (dropWhile (< x) primos) == x

--problema 8
isEvenAndPrimeNumber x= (even x) && (isPrimeNumber x)

--problema 9
isMultiple :: (Integral a)=>a->a->Bool
isMultiple x y= mod x y==0

--problema 10
isEqual2Digits :: (Integral a)=>a->Bool
isEqual2Digits x
    | x>=100 || x<10 = error "Sobrepasa el limite"
isEqual2Digits x = (mod x 10) == (div x 10)

--problema 11
higher :: (Integral a)=>a->a->a->a
higher x y z
    | x>y && x>z=x
    | y>x && y>z=y
    |otherwise =z

--problema 12
isEvenSum2Number :: (Integral a)=>a->a->Bool
isEvenSum2Number x y= even (x+y)

--problema 13
sum2Digit2Number :: (Integral a)=>a->a->a
sum2Digit2Number x y
    |x>=100 || x<10=error "Un numero no es de dos digitos"
    |y>=100 || y<10=error "Un numero no es de dos digitos"
sum2Digit2Number x y= ((mod x 10) + (div x 10))+((mod y 10) + (div y 10))

--problema 14
sum3Digit :: (Integral a)=>a->a
sum3Digit x
    |x<100 || x>=1000 =error "El numero no es de tres digitos"
sum3Digit x=(div x 100)+(div (mod x 100) 10)+(mod (mod x 100) 10)

--problema 15
equal3Digit :: (Integral a)=>a->Bool
equal3Digit x
    |x<100 || x>=1000 =error "El numero no es de tres digitos"
equal3Digit x
    | (div x 100)==(div (mod x 100) 10)=True
    | (div x 100)==(mod (mod x 100) 10)=True
    | (div (mod x 100) 10)==(mod (mod x 100) 10)=True
    | otherwise =False

--problema 16
positionHigher3Digits :: (Integral a)=>a->String
positionHigher3Digits x
    |x<100 || x>=1000 =error "El numero no es de tres digitos"
positionHigher3Digits x
    | (div x 100)>(div (mod x 100) 10) && (div x 100)>(mod (mod x 100) 10)="El numero de la posicion 1 es el mas grande"
    | (div (mod x 100) 10)>(div x 100) && (div (mod x 100) 10)>(mod (mod x 100) 10)="El numero de la posicion 2 es el mas grande"
    | otherwise ="El numero de la posicion 3 es el mas grande"

--problema 17
palindrome a = a == reverse a

--problema 18
safeDivision :: Float->Float->Float
safeDivision _ 0=error "no se puede dividir entre 0"
safeDivision x y= x/y

--problema 19
xor :: Bool->Bool->Bool
xor True True =True
xor True False =True
xor False True =True
xor False False =False

--problema 20
distance (x1,y1) (x2,y2)= sqrt(((x1-x2)^2)+((y1-y2)^2))