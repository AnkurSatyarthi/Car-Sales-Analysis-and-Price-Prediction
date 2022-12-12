# Roughly Notebook 02
# Arithmetic operators and Functions
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
# Matrix operations
A = Float64[1 4 5; 3 9 2]; B = Float64[1 4 2; 3 4 2; 8 7 1];
# Matrix division
X = A / B
# isapprox
isapprox(A, X*B)
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
mod2pi(9*pi/4)
# divrem(x,y,r::RoundingMode=RoundToZero)
divrem(3,7)
divrem(7,3)
x=15; y=4;
fld1(x,y)
x===fld(x,y)*y+mod(x,y)
x===(fld1(x,y)-1)*y+mod1(x,y)
mod1(4,2)
mod1.(-5:5,3)'
mod1.([-0.1,0,0.1,1,2,2.9,3,3.1]',3)
1//2
(1//2)//(3//4)
rationalize(1.2)
rationalize(0.999999)
a = rationalize(BigInt, 3.12)
22/7
rationalize(3.142857142857143)
rationalize(BigInt, 3.142857142857143)
typeof(numerator(a))
numerator(5)
numerator(2//3)
numerator(4)
numerator(2)
numerator(1//2)
denominator(1//2)
Int8(3)<<2
Int8(1)<<2
bitstring(Int8(1))
bitstring(Int16(11664))
bitstring(Int8(11))
B = BitVector([true,false,true,false,false])
B<<1
B<<-1
Int8(13)>>2
bitstring(Int8(13))
bitstring(Int8(3))
Int8(-14)>>2
bitstring(Int8(-14))
bitstring(Int8(-4))
B = BitVector([true,false,true,false,false])
B>>1
B>>-1
Int8(-14) >>> 2
bitstring(Int8(-14))
bitstring(Int8(60))
bitrotate(UInt8(114),2)
bitstring(bitrotate(0b01110010,2))
bitstring(bitrotate(0b01110010,-2))
bitstring(bitrotate(0b01110010,8))
I = CartesianIndex(2,1); J = CartesianIndex(3,3); I:J
I:CartesianIndex(1,2):J
range(1,length=100)
range(1,stop=100)
range(1,step=5,length=100)
range(1,step=5,stop=100)
range(1,10,length=101)
range(1,100,step=5)
range(stop=10,length=5)
range(stop=10,step=1,length=5)
range(start=1,step=1,stop=10)
range(; stop=6)
range(; stop=6.5)
range(1,3.5,step=2)
Base.OneTo(100)
1!=2
"ankur"≠"akash"
==(1,2)
!=(1,2)
≠(1,2)
!==(1,2)
≢(1,2)
a=[1,2];b=[1,2]; a≢b
+(1,2,3)
+(1,2,3);
+(4,5,6)
a≢a
<(1,2)
"a"<"b"
"abc"<"abd"
1<2
3<2
<(5)
<=(1,2)
<=(1,2)
≤(1,2)
# Less-than-or-equals comparison operator. Falls back to (x < y) | (x == y).
'a' <= 'b'
7 ≤ 7 ≤ 9
"abc" ≤ "abc"
1<=2
<=(2)
>(1,2)
>(1,2)==2<1
1>2>3>4>5
5>3
>(5)
>=(1,2)
≥(1,2)
'a'>='b'
1 ≥ 2 ≥ 3
"abc" ≥ "abc"
1 ≥ 2
cmp(1,2)
cmp(2,1)
cmp(2+im,3-im)
cmp(<,1,2)
cmp("abc","abc")
cmp("ab","abc")
cmp("abc","ab")
cmp("ab","ac")
cmp("α", "a")
cmp("b", "β")
# Bitwise operator
~(1)
~(3)
~(2)
~(0)
~(-1)
~(-2)
~10
~true
~false
~0
~-1
1&2
1&3
1&5
2&5
2&6
108&11664
(&)(1,2)
4&10
4&12
true&missing
false&missing
# Bitwise or
4|10
1|2
3|2
99|1
true|missing
false|missing
# Xor 
xor(1,2)
xor(true,false)
xor(true,true)
xor(true,missing)
false ⊻ false
[true; true; false] .⊻ [true; false; false]
# Base.nand(x,y)
nand(true,false)
nand(true,true)
nand(true,missing)
# nor
nor(true,false)
nor(true,true)
nor(true,missing)
# Boolean not
!true
!false
!missing
# !f::Function
# Predicate function negation: when the argument of ! is a function, it returns a function which computes the boolean negation of f.
str = "∀ ε > 0, ∃ δ > 0: |x-y| < δ ⇒ |f(x)-f(y)| < ε"
filter(isletter,str)
filter(!isletter,str)
# Short-circuiting boolean AND (AND keyword)
x=5;
x>1 && x<10 && x isa Int
x < 0 && error("expected positive x")
# Short-circuiting boolean OR
false || true || println("neither is true!")
# Base.isapprox - Function
isapprox(0.1,0.15;atol=0.05)
isapprox(0.1,0.15;rtol=0.34)
isapprox(0.1,0.15;rtol=0.33)
0.1+1e-10≈0.1
1e-10≈0
isapprox(1e-10,0,atol=1e-8)
isapprox([10.0^9,1.0],[10.0^9,2.0]) # using 'norm'
# Base.sin - Method
sin(5)
# Base.cos - Method
cos(5)
# Base.Math.sincos - Method
sincos(5)
# Base.tan - Method
tan(5)
sin(5)/cos(5)
# Base.Math.sind - Function
sind(5)
# Base.Math.cosd - Function
cosd(5)
# Base.Math.tand - Function
tand(5)
# Base.Math.sincosd - Function
sincosd(5)
# Base.Math.sinpi - Function : Compute sin(πx) more accurately than sin(pi*x), especially for large x.
sinpi(5)
# Base.Math.cospi - Function : Compute cos(πx) more accurately than cos(pi*x), especially for large x.
cospi(5)
# Base.Math.sincospi - Function : Simultaneously compute sinpi(x) and cospi(x) (the sine and cosine of π*x, where x is in radians),
# returning a tuple (sine, cosine).
sincospi(5)







