-[1 2; 3 4]
+(5, 9)
1 + 20 + 4
+(1, 20, 4)
*(13,31)
/(13,31)
1/2
4.5/2
4\2
4/2
5 == 4*2
5 === 4*2
A = Float64[1 4 5; 3 9 2]; B = Float64[1 4 2; 3 4 2; 8 7 1];
X = A / B
isapprox(A, X*B)
isapprox(X, A*pinv(B))
/(5,3)
\(5,3)
inv(3) * 6
3 \ 6
A = [4 3; 2 1]; x = [5, 6];
A \ x
inv(A) * x
^(2,3)
2^3
A = [1 2; 3 4]
A^3
fma(1, 2, 3)
muladd(1,2,3)
1*2+3
A=[1.0 2.0; 3.0 4.0]; B=[1.0 1.0; 1.0 1.0]; z=[0, 100];
muladd(A, B, z)
inv(2)
inv(10)
inv(1)
inv(1+2im)
inv(1+2im)*(1+2im)
inv(2//3)
div(2,3)
÷(2,3)
2/3
2//3
2\3
2÷3
-3÷2
3÷2
div.(-5:5, 3)'
fld(7.3,5.5)
fld.(-5:5, 3)'
fld(6.0,0.1)
6.0/0.1
6.0/big(0.1)
cld(5.5,2.2)
cld.(-5:5, 3)'
mod(0, Base.OneTo(3)) # mod1(0, 3)
mod(3, 0:2) # mod(3, 3)
mod(8,3)
mod(9,3)
mod(8.9,3)
mod(eps(),3)
mod(-eps(),3)
mod.(-5:5, 3)'
129%Int8
rem(2,3)
%(2,3)
x = 15; y = 4;
x%y
x == div(x, y) * y + rem(x, y)
rem.(-5:5,3)'
rem2pi(7pi/4, RoundNearest)
rem2pi(7pi/4, RoundDown)




