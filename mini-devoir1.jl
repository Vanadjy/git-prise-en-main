using LinearAlgebra, Test

# 1
A = rand(Int, (100,100)) #création de la matrice d'entiers A de taille 100x100
b = rand(Int, 100) #créaion du vecteur b de 100 entiers
x = A\b #calcul de la solution du système linéaire Ax = b

# 2
r = A*x - b #calcul du résiduel
Ar = A*r #calcul de Ar
condA = cond(A) #calcul du conditionnement, par défaut, on prend la norme euclidienne

# 3
@test size(A) == (100, 100) # un exemple d'utilisation de @test
@test (norm(r)/norm(x)) <= condA*(norm(Ar)/norm(b)) #test de l'inégalité finale