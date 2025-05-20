-----exercise 1.1

pgcd::(Int,Int)->Int
pgcd (a,b)
        |a==b = a
        |a>b = pgcd(a-b,b)
        |a<b = pgcd(a,b-a)


-------exercise 1.2
ppcm::(Int,Int)->Int
ppcm (a,b) = a*b `div`pgcd(a,b)



-------exercise 1.3
sommeimpair::Int->Int
sommeimpair n = if n == 1 then 1 else (sommeimpair(n-1)+(2*(n-1)+1))




--------exercice 1.4 
divisionentier:: Int->Int->(Int,Int)
divisionentier  a b =  (mod a b , div a b)

---------exercice 1.5
mymin::(Int,Int)->Int
mymin (a,b) = if a < b then a else b


mymax::(Int,Int)->Int
mymax (a,b) = if a > b then a else b


---------exercise 1.6
mymin4::Int->Int->Int->Int->Int
mymin4 a  b c d = mymin(mymin(a,b) , mymin(c,d))

mymax4::Int->Int->Int->Int->Int
mymax4 a  b c d = mymax(mymax(a,b) , mymax(c,d))


--------exercice 1.7
bornerdans::Int->Int->Int->Int
bornerdans a b c 
                | c< bornermin = bornermin
                | c > bornermax = bornermax
                |otherwise = c
                        where 
                                bornermin = mymin(a,b)
                                bornermax = mymax (a,b)


--------exercice 1.8
sommechiffre::Int->Int
sommechiffre n 
                | n < 10 = n
                | n >= 10 = (mod n 10)+sommechiffre (div n 10)


--------exercice 1.9
diviseur:: Int->[Int]
diviseur n = [i|i <- [1..n] , mod n i == 0]

lenght::[Int]->Int
lenght [] = 0
lenght (x:xs) = 1 + lenght xs


premier::Int->Bool
premier n = lenght (diviseur n )==2



-------------exercice 1.10
type Point=(Double,Double)
distance::Point->Point->Double
distance (a,b) (c,d) = sqrt((c-a)^2+(d-b)^2)
 

 ----------exercise 1.11
u::Int->Int
u n 
        |n == 0 = -2 
        |n > 0 = u(n-1)*4+3

---------------exercice1.12
------somme des termes de i à n
s::Int->Int
s n = if n==0 then 0 else s(n-1)+n

-------somme des carrés des nomnbres de 0 à n
q::Int->Int
q n = if n==0 then 0 else q(n-1)+n^2

--------somme des inverse des réels allant de 1 à n
g::Float->Float
g n = if n == 1 then 1 else g(n-1)+(1)/n 


---------------somme de ((-1)^(k-1))/k de 1 à n

k::Float->Float
k n = if n==1 then 1 else k(n-1)+((-1)**(n-1))/n




----------somme des inverse des carrés des réels allant de 1 à n
h::Float->Float
h n = if n == 1 then 1 else h(n-1)+(1)/n^2 







 --------exercice 2
data Resultat = Singleton Float | Couple Float Float deriving (Show)
snddegres::Float->Float->Float->Resultat
snddegres a b c  
                |delta < 0 = error "pas de solution"
                |delta == 0 = Singleton (-b/2*a)
                |otherwise  = Couple x1 x2
                        where
                                delta = sqrt(b*b-4*a*c)
                                x1 = (-b-sqrt(delta))/2*a
                                x2 = (-b+sqrt(delta))/2*a
                                        
---------------exercice 3
data Jour = Lundi | Mardi | Mercredi | Jeudi | Vendredi | Samedi | Dimanche deriving(Show)
weekend::Jour -> Bool
weekend Samedi = True
weekend Dimanche = True
weekend ___ = False

numerojour::Jour->Int
numerojour Lundi = 1
numerojour Mardi = 2
numerojour Mercredi = 3
numerojour Jeudi = 4
numerojour Vendredi = 5
numerojour Samedi = 6
numerojour Dimanche = 7

-----------exercice 4
type Couple = (Int,Int)
produitscalaire::Couple->Couple->Int
produitscalaire (z1,z2) (w1,w2) =(z1*w1) + (z2*w2)










