--Problema 1
firstToEnd :: (Ord a)=>[a]->[a]--listas de tipo de dato de orden
firstToEnd []=[]
firstToEnd [n]=[n]
firstToEnd (x:xs)= xs++[x]--seconcatena el resto de la lista con una lista con el primer elemento

--Problema 2
minAndMax :: (Ord a)=>[a]->[a]--listas de tipo de dato de orden
minAndMax []=error "Lista vacia"--casos
minAndMax [n]=[n]
minAndMax  (x:xs) = [minimum (x:xs)]++[maximum (x:xs)]--Se uso las funciones minimun y maximum

--Problema 3
minorsFirstElement :: (Integral a)=>[a]->[a]--listas de tipo de dato Integral
minorsFirstElement []=[]--casos
minorsFirstElement [n]=[]
minorsFirstElement (x:xs) = [y | y<-xs, y<head(x:xs)]--elementos de la lista que son menores al primer elemento

--Problema 4
greaterOrEqualFirstElement :: (Integral a)=>[a]->[a]--listas de tipo de dato Integral
greaterOrEqualFirstElement []=[]--casos
greaterOrEqualFirstElement [n]=[]
greaterOrEqualFirstElement (x:xs) = [y | y<-xs, y>=head(x:xs)]--elementos de la lista que son mayores o iguales al primer elemento

--Problema 5
minorsToSumFirstAndSecondElem :: (Integral a)=>[a]->[a]--listas de tipo de dato Integral
minorsToSumFirstAndSecondElem []=[]--casos
minorsToSumFirstAndSecondElem [n]=[]
minorsToSumFirstAndSecondElem [n1,n2]=[]
minorsToSumFirstAndSecondElem (x:y:xs) = [z | z<-xs, z<(x+y)]--elementos de la lista que son menores a la suma del primer y segundo elemento

--Problema 6
listSumDuplaToList :: (Integral a)=>[(a,a)]->[a]--recibe una lista de duplas y regresa una lista
listSumDuplaToList []=[]--caso
listSumDuplaToList xs=[x+y| (x,y)<-xs]--lista de la suma de los miembros de la dupla

--Problema 7
listMultTripletaToList :: (Integral a)=>[(a,a,a)]->[a]--recibe una lista de tripletas y regresa una lista
listMultTripletaToList []=[]--caso
listMultTripletaToList xs=[x*y*z| (x,y,z)<-xs]--lista de la multiplicacion de los miembros de la tripleta

--Problema 8
changeFstToSnd :: (Integral a)=>[(a,a)]->[(a,a)]--recibe una lista con duplas y regresa una lista con duplas
changeFstToSnd []=error "lista vacia"--caso
changeFstToSnd xs=[(snd(x,y),fst(x,y))| (x,y)<-xs]--se usan las funciones snd y fst para la solucion

--Problema 9
suma :: (Num a)=>[a]->[a]->[a]--no pude hacerlo con duplas y lo realice de estaa manera
suma [] []=[]
suma (x:xs) (y:ys)= x+y :suma xs ys

sumVectors :: (Num a)=>[[a]]->[a]
sumVectors []=[]
sumVectors [xs] = xs
sumVectors (xs:ys:zss)=suma xs ( sumVectors (ys:zss))

--Problema 10
dividers :: (Integral a)=>a->[a]--se recibe un numero y se retorna una lista
dividers n=[ x | x<-[1..n],(mod n x==0)]--se crea una lista con la funcion mod

--Problema 11
elimina :: (Integral a)=>a->[a]->[a]--Reuse las funciones de la practica pasada
elimina n xs = [ x | x <- xs, mod x n /= 0 ]

criba :: (Integral a)=>[a]->[a]
criba []     = []
criba (n:ns) = n : criba (elimina n ns)

primeNumbers :: (Integral a)=>a->[a]
primeNumbers n= criba [2..n]

--Problema 12
infinitePrimeNumbers :: (Integral a)=>[a]--se regresa una lista infinita de numeros primos
infinitePrimeNumbers = criba [2..]