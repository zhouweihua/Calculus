(* ::Package:: *)

BeginPackage["IntTable`"];(*Set $ContextPath={"IntTable`","System`"}*)
ListIntegrate=
{
	A[a_ f_, x_] := a A[f, x] /; FreeQ[a, x],
	A[a_, x_] := a x /; FreeQ[a, x],
	A[x_, x_] := x^2/2,
	A[f_ + g_, x_] := A[f, x] + A[g, x],
	A[x_^n_ Sqrt[a_ x_ + b_], x_] := (2 x^n)/((2 n + 3) a) (Sqrt[(a x + b)])^3 - (2 n b)/((2 n + 3) a) A[x^(n - 1) Sqrt[a x + b], x] /; FreeQ[n, x] && FreeQ[a, x] && FreeQ[b, x],
	A[f_[a_ x_ + b_], x_] := A[f[a x + b],a x + b] / a /; FreeQ[{a, b}, x],
	
	A[1,x_] := x,
	A[1/x_,x_] := Log[x],
	A[x_^n_, x_] := x^(1 + n)/(1 + n) /; FreeQ[{n}, x],
	A[E^x_, x_] := E^x,
	A[a_^x_, x_] := a^x/Log[a] /; FreeQ[{a}, x],
	A[1/(1 + x_^2), x_] := ArcTan[x],
	A[1/(1 - x_^2), x_] := 1/2 Log[-1 - x] - 1/2 Log[-1 + x],
	A[1/(2 Sqrt[x]),x_] := Sqrt[x],
	A[1/Sqrt[1 - x_^2], x_] := ArcSin[x],
	A[1/Sqrt[1 + x_^2], x_] := ArcSinh[x],
	A[1/Sqrt[-1 + x_^2], x_] := Log[2 (x + Sqrt[-1 + x^2])],
	A[1/(1 - x_^2), x_] := 1/2 Log[-1 - x] - 1/2 Log[-1 + x],
	A[Sqrt[x_ + Sqrt[x_]], x_] := 1/12 Sqrt[Sqrt[x] + x] (-3 + 2 Sqrt[x] + 8 x) + 1/8 Log[1 + 2 Sqrt[x] + 2 Sqrt[Sqrt[x] + x]],

	(*Integration with Tirg={Sin,Cos,Tan,Cot,Sec,Csc,Sinh,Coth,Tanh,ArcSin,ArcCos,ArcTan,ArcCot,ArcSec,ArcCsc}*)

	A[Sin[x_], x_] := -Cos[x],
	A[Cos[x_], x_] := Sin[x],
	A[Csc[x_]^2, x_] := -Cot[x],
	A[Sec[x_]^2, x_] := Tan[x],
	A[Sec[x_] Tan[x_], x_] := Sec[x],
	A[Cot[x_] Csc[x_], x_] := -Csc[x],
	A[Tan[x_], x_] := -Log[Cos[x]],
	A[Cot[x_], x_] := Log[Sin[x]],
	A[Csc[x_], x_] := -Log[2 Cos[x/2]] + Log[2 Sin[x/2]],
	A[Sec[x_], x_] := -Log[Cos[x/2] - Sin[x/2]] + Log[Cos[x/2] + Sin[x/2]],
	A[Sinh[x_], x_] := Cosh[x],
	A[Cosh[x_], x_] := Sinh[x],
	A[Csch[x_]^2, x_] := -Coth[x],
	A[Sech[x_]^2, x_] := Tanh[x],
	A[Tanh[x_], x_] := Log[Cosh[x]],
	A[Coth[x_], x_] := Log[Sinh[x]],
	A[Csch[x_], x_] := -Log[2 Cosh[x/2]] + Log[2 Sinh[x/2]],  
	A[Sin[a_ x_],x_] := -(Cos[a x]/a) /;FreeQ[{a},x],
	A[Cos[a_ x_],x_] := Sin[a x]/a /;FreeQ[{a},x] ,
	A[Sin[a_ x_]^2,x_] := x/2 - Sin[2 a x]/(4 a) /;FreeQ[{a},x],
	A[Cos[a_ x_]^2,x_] := x/2 + Sin[2 a x]/(4 a) /;FreeQ[{a},x],
	A[1/(1+Sin[a_ x_]),x_] := -1/a*Tan[Pi/4 -a x/2] /;FreeQ[{a},x],
	A[1/(1+Cos[a_ x_]),x_] := 1/a*Tan[a x/2] /;FreeQ[{a},x],
	A[1/(b_+c_Sin[a_ x_]),x_] := (2 ArcTan[(1 + b Tan[(c x)/2])/Sqrt[-1 + b^2]])/(Sqrt[-1 + b^2] c) /;FreeQ[{a},x],
	A[1/(b_+c_Cos[a_ x_]),x_] := (-2 ArcTanh[((-1 + b) Tan[(c x)/2])/Sqrt[1 - b^2]])/(Sqrt[1 - b^2] c) /;FreeQ[{a},x],
	A[Tan[a_ x_],x_] := -(Log[Cos[a x]]/a) /;FreeQ[{a},x],
	A[Sec[a_ x_],x_] := -(Log[Cos[(a x)/2] - Sin[(a x)/2]]/a) + Log[Cos[(a x)/2] + Sin[(a x)/2]]/a /;FreeQ[{a},x],
	A[Sinh[a_ x_ +b_],x_] := (Cosh[b] Cosh[a x])/a + (Sinh[b] Sinh[a x])/a /;FreeQ[{a,b},x],
	A[Coth[a_ x_ +b_],x_] := Log[Sinh[b + a x]]/a /;FreeQ[{a,b},x],
	A[Tanh[a_ x_ +b_],x_] := Log[Cosh[b + a x]]/a /;FreeQ[{a,b},x],
	A[1/Sin[a_ x_ +b_],x_] := -(Log[2 Cos[b/2 + (a x)/2]]/a) + Log[2 Sin[b/2 + (a x)/2]]/a /;FreeQ[{a,b},x],
	A[1/Cos[a_ x_ +b_],x_] := -(Log[Cos[b/2 + (a x)/2] - Sin[b/2 + (a x)/2]]/a) + Log[Cos[b/2 + (a x)/2] + Sin[b/2 + (a x)/2]]/a /;FreeQ[{a,b},x],
	A[1/Tan[a_ x_ +b_],x_] := Log[Sin[b + a x]]/a /;FreeQ[{a,b},x],
	A[1/Cot[a_ x_ +b_],x_] := -(Log[Cos[b + a x]]/a) /;FreeQ[{a,b},x],
	A[1/Sec[a_ x_ +b_],x_] := (Cos[a x] Sin[b])/a + (Cos[b] Sin[a x])/a /;FreeQ[{a,b},x],
	A[1/Sinh[a_ x_ +b_],x_] := -(Log[2 Cosh[b/2 + (a x)/2]]/a) + Log[2 Sinh[b/2 + (a x)/2]]/a /;FreeQ[{a,b},x],
	A[1/Coth[a_ x_ +b_],x_] := Log[Cosh[b + a x]]/a /;FreeQ[{a,b},x],
	A[1/Tanh[a_ x_ +b_],x_] := Log[Sinh[b + a x]]/a /;FreeQ[{a,b},x],
	A[1/(Sin[a_ x_ + b_]^2), x_] := -(Cot[b + a x]/a) /;FreeQ[{a,b},x],
	A[1/(Cos[a_ x_ + b_]^2), x_] := Tan[b + a x]/a /;FreeQ[{a,b},x],
	A[1/(Tan[a_ x_ + b_]^2), x_] := -x - Cot[b + a x]/a /;FreeQ[{a,b},x],
	A[1/(Cot[a_ x_ + b_]^2), x_] := -x + Tan[b + a x]/a /;FreeQ[{a,b},x],
	A[1/(Sec[a_ x_ + b_]^2), x_] := (2 (b + a x) + Sin[2 (b + a x)])/(4 a) /;FreeQ[{a,b},x],
	A[1/(Csc[a_ x_ + b_]^2), x_] := -(-2 (b + a x) + Sin[2 (b + a x)])/(4 a) /;FreeQ[{a,b},x],
	A[Sin[a_ x_ + b_], x_] := -1/a Cos[a x + b] /;FreeQ[{a,b},x],
	A[Cos[a_ x_ + b_], x_] := 1/a Sin[a x  + b] /;FreeQ[{a,b},x],
	A[Tan[a_ x_ + b_],x_] := -Log[Cos[a x  + b ]]/a /;FreeQ[{a,b},x],
	A[Cot[a_ x_ + b_],x_] := -Log[Sin[a x  + b ]]/a /;FreeQ[{a,b},x],
	A[Sec[a_ x_ +b_],x_] := (Log[Sin[(a x )/2 + b/2]+Cos[(a x )/2 + b/2]]-Log[Cos[(a x )/2 + b/2]-Sin[(a x )/2 + b/2]])/a /;FreeQ[{a,b},x],
	A[ArcSin[a_ x_ +b_],x_] := (Sqrt[- a^2 x^2 -a b x - b^2 + 1]+(a x + b)ArcSin[a x + b])/a /;FreeQ[{a,b},x],
	A[ArcCos[a_ x_ +b_],x_] := x ArcCos[a x + b] - (Sqrt[-a^2 x^2 - 2 a b x - b^2 + 1] + b ArcSin[a x + b])/a /;FreeQ[{a,b},x],
	A[ArcTan[a_ x_ +b_],x_] := -(Log[a^2x^2 + 2a b x + b^2 + 1] - 2(a x + b)ArcTan[a x + b])/(2a) /;FreeQ[{a,b},x],
	A[ArcCot[a_ x_ +b_],x_] := (Log[a^2x^2 + 2a b x + b^2 + 1] - 2b ArcTan[a x + b])/(2a)+x ArcCot[a x + b] /;FreeQ[{a,b},x],
	A[ArcSec[a_ x_ +b_],x_] := x ArcSec[b + a x] - ((b + a x) Sqrt[(-1 + b^2 + 2 a b x + a^2 x^2)/(b + a x)^2] (b ArcTan[1/Sqrt[-1 + b^2 + 2 a b x + a^2 x^2]] + Log[2 (b + a x + Sqrt[-1 + b^2 + 2 a b x + a^2 x^2])]))/(a Sqrt[-1 + b^2 + 2 a b x + a^2 x^2]) /;FreeQ[{a,b},x],
	A[ArcCsc[a_ x_ +b_],x_] := x ArcCsc[b + a x] + ((b + a x) Sqrt[(-1 + b^2 + 2 a b x + a^2 x^2)/(b + a x)^2] (b ArcTan[1/Sqrt[-1 + b^2 + 2 a b x + a^2 x^2]] + Log[2 (b + a x + Sqrt[-1 + b^2 + 2 a b x + a^2 x^2])]))/(a Sqrt[-1 + b^2 + 2 a b x + a^2 x^2]) /;FreeQ[{a,b},x],

	(*Integration with Tirg={Sin,Cos,Tan,Cot,Sec,Csc,Sinh,Coth,Tanh,ArcSin,ArcCos,ArcTan,ArcCot,ArcSec,ArcCsc}*)
	
	(*Integration with parameter*)

  A[Log[a_ x_ +b_],x_] := -x + (b Log[b + a x])/a + x Log[b + a x] /;FreeQ[{a,b},x],
  A[E^(a_ x_ +b_),x_] := E^(b + a x)/a /;FreeQ[{a,b},x],
  A[c_^(a_ x_ +b_),x_] := c^(b + a x)/(a Log[c]) /;FreeQ[{a,b,c},x],
  A[1/(a_x +b_),x_] := Log[b + a x]/a /;FreeQ[{a,b},x],
  A[Sqrt[b_ + a_ x_], x_] := (2 (b + a x)^(3/2))/(3 a) /;FreeQ[{a, b}, x],
  A[x_ Sqrt[b_ + a_ x_],x_] := (2 Sqrt[b + a x] (-2 b^2 + a b x + 3 a^2 x^2))/(15 a^2) /;FreeQ[{a, b}, x],
  A[1/(x_^2 +a_^2),x_] := ArcTan[x/a]/a /;FreeQ[{a},x] && a!=0,
  A[1/(x_^2 -a_^2),x_] := -(ArcTanh[x/a]/a) /;FreeQ[{a},x] && a!=0,
  A[1/(a_^3 +x_^3),x_] := (2 Sqrt[3] ArcTan[(-a + 2 x)/(Sqrt[3] a)] + 2 Log[a + x] - Log[a^2 - a x + x^2])/(6 a^2) /;FreeQ[{a},x],
  A[1/(a_^3 -x_^3),x_] := (2 Sqrt[3] ArcTan[(a + 2 x)/(Sqrt[3] a)] - 2 Log[-a + x] + Log[a^2 + a x + x^2])/(6 a^2) /;FreeQ[{a},x],
  A[x_/(a_^3 +x_^3),x_] := (2 Sqrt[3] ArcTan[(-a + 2 x)/(Sqrt[3] a)] - 2 Log[a + x] + Log[a^2 - a x + x^2])/(6 a) /;FreeQ[{a},x],
  A[x_/(a_^3 -x_^3),x_] := (-2 Sqrt[3] ArcTan[(a + 2 x)/(Sqrt[3] a)] - 2 Log[-a + x] + Log[a^2 + a x + x^2])/(6 a) /;FreeQ[{a},x],
  A[x_^2/(a_^3 +x_^3),x_] := Log[a^3 + x^3]/3 /;FreeQ[{a},x],
  A[x_^2/(a_^3 -x_^3),x_] := -Log[a^3 - x^3]/3 /;FreeQ[{a},x],
  A[1/(a_^4 +x_^4),x_] := (-2 ArcTan[1 - (Sqrt[2] x)/a] + 2 ArcTan[1 + (Sqrt[2] x)/a] - Log[a^2 - Sqrt[2] a x + x^2] + Log[a^2 + Sqrt[2] a x + x^2])/(4 Sqrt[2] a^3) /;FreeQ[{a},x],
  A[1/(a_^4 -x_^4),x_] := ArcTan[x/a]/(2 a^3) - Log[-a + x]/(4 a^3) + Log[a + x]/(4 a^3) /;FreeQ[{a},x],
  A[x_/(a_^4 +x_^4),x_] := ArcTan[x^2/a^2]/(2 a^2) /;FreeQ[{a},x],
  A[x_/(a_^4 -x_^4),x_] := ArcTanh[x^2/a^2]/(2 a^2) /;FreeQ[{a},x],
  A[x_^2/(a_^4 +x_^4),x_] := (-2 ArcTan[1 - (Sqrt[2] x)/a] + 2 ArcTan[1 + (Sqrt[2] x)/a] + Log[a^2 - Sqrt[2] a x + x^2] - Log[a^2 + Sqrt[2] a x + x^2])/(4 Sqrt[2] a) /;FreeQ[{a},x], 
  A[x_^2/(a_^4 -x_^4),x_] := -ArcTan[x/a]/(2 a) - Log[-a + x]/(4 a) + Log[a + x]/(4 a) /;FreeQ[{a},x],
  A[x_^3/(a_^4 -x_^4),x_] := Log[a^4 + x^4]/4 /;FreeQ[{a},x],
  A[x_^3/(a_^4 -x_^4),x_] := -Log[a^4 - x^4]/4 /;FreeQ[{a},x],
  
  A[x_ (a_ x_ +b_)^n_,x_] := ((b + a x)^(1 + n) (-b + a (1 + n) x))/(a^2 (1 + n) (2 + n)) /;FreeQ[{a,b,n},x]&& n!=-1 && n!=-2,
  A[x_/(a_ x_ +b_),x_] := x/a - (b Log[b + a x])/a^2 /;FreeQ[{a,b},x],
  A[x_/(a_ x_ +b_)^2,x_] := (b/(b + a x) + Log[b + a x])/a^2 /;FreeQ[{a,b},x],
  A[1/(x_ Sqrt[a_ x_ +b_]),x_] := (-2 ArcTanh[Sqrt[b + a x]/Sqrt[b]])/Sqrt[b] /;FreeQ[{a,b},x],
  A[Sqrt[a_ x_ +b_]/x_,x_] := 2 Sqrt[b + a x] - 2 Sqrt[b] ArcTanh[Sqrt[b + a x]/Sqrt[b]] /;FreeQ[{a,b},x],
  A[Sqrt[a_ x_ +b_]/x_^2,x_] := -(Sqrt[b + a x]/x) - (a ArcTanh[Sqrt[b + a x]/Sqrt[b]])/Sqrt[b] /;FreeQ[{a,b},x],
  A[1/(x_^2 Sqrt[a_ x_ +b_]),x_] := -(Sqrt[b + a x]/(b x)) + (a ArcTanh[Sqrt[b + a x]/Sqrt[b]])/b^(3/2) /;FreeQ[{a,b},x],
  A[1/(a_^2 +x_^2)^2,x_] := ((a x)/(a^2 + x^2) + ArcTan[x/a])/(2 a^3) /;FreeQ[{a},x],
  A[1/(a_^2 -x_^2)^2,x_] := ((a x)/(a^2 - x^2) + ArcTanh[x/a])/(2 a^3) /;FreeQ[{a},x],
  A[1/Sqrt[x_^2 +a_^2],x_] := Log[2 (x + Sqrt[a^2 + x^2])] /;FreeQ[{a},x],
  A[1/Sqrt[x_^2 -a_^2],x_] := Log[2 (x + Sqrt[-a^2 + x^2])] /;FreeQ[{a},x],
  A[Sqrt[a_^2 -x_^2],x_] := (x Sqrt[a^2 - x^2] + a^2 ArcTan[x/Sqrt[a^2 - x^2]])/2 /;FreeQ[{a},x],
  A[Sqrt[x_^2 +a_^2],x_] := (x Sqrt[a^2 + x^2])/2 + (a^2 Log[2 (x + Sqrt[a^2 + x^2])])/2 /;FreeQ[{a},x],
  A[Sqrt[x_^2 -a_^2],x_] := (x Sqrt[-a^2 + x^2])/2 - (a^2 Log[2 (x + Sqrt[-a^2 + x^2])])/2 /;FreeQ[{a},x],
  A[(x_^2 +a_)^(3/2),x_] := Sqrt[a + x^2] ((5 a x)/8 + x^3/4) + (3 a^2 Log[2 (x + Sqrt[a + x^2])])/8 /;FreeQ[{a},x],
  A[(x_^2 -a_)^(3/2),x_] := Sqrt[-a + x^2] ((-5 a x)/8 + x^3/4) + (3 a^2 Log[2 (x + Sqrt[-a + x^2])])/8 /;FreeQ[{a},x],
  A[1/(x_^2 +a_^2)^(3/2),x_] := x/(a^2 Sqrt[a^2 + x^2]) /;FreeQ[{a},x],
  A[1/(x_^2 -a_^2)^(3/2),x_] := -(x/(a^2 Sqrt[-a^2 + x^2])) /;FreeQ[{a},x],
  A[1/Sqrt[2 a_ x_ -x_^2],x_] := ArcSin[(x-a)/a] /;FreeQ[{a},x],
  A[Sqrt[2 a_ x_ -x_^2],x_] := (x-a)/2 Sqrt[2 a x-x^2]+a^2/2 ArcSin[(x-a)/a] /;FreeQ[{a},x],
  A[x_ Sqrt[2 a_ x_ -x_^2],x_] := (x+a) (2 x-3 a) Sqrt[2 a x-x^2]/6+a^3/2 ArcSin[(x-a)/a] /;FreeQ[{a},x],
  A[Sqrt[2 a_ x_ -x_^2]/x_,x_] := Sqrt[2 a x-x^2]+a ArcSin[(x-a)/a] /;FreeQ[{a},x],
  A[Sqrt[2 a_ x_ -x_^2]/x_^2,x_] := -2 Sqrt[(2 a-x)/x] -ArcSin[(x-a)/a] /;FreeQ[{a},x],
  A[x_/Sqrt[2 a_ x_ -x_^2],x_] := a ArcSin[(x-a)/a]-Sqrt[2 a x-x^2] /;FreeQ[{a},x],
  A[1/(x_ Sqrt[2 a_ x_ -x_^2]),x_] := -1/a Sqrt[(2 a-x)/x] /;FreeQ[{a},x],
  A[Sqrt[(a_+x_)/(b_+x_)],x_] := (Sqrt[(a + x)/(b + x)] (2 Sqrt[a + x] (b + x) + (a - b) Sqrt[b + x] Log[a + b + 2 x + 2 Sqrt[a + x] Sqrt[b + x]]))/(2 Sqrt[a + x]) /;FreeQ[{a,b},x],
  A[Sqrt[(a_-x_)/(b_+x_)],x_] := (Sqrt[(a - x)/(b + x)] (2 (b + x) - ((a + b) Sqrt[b + x] ArcTan[(a - b - 2 x)/(2 Sqrt[a - x] Sqrt[b + x])])/Sqrt[a - x]))/2 /;FreeQ[{a,b},x],
  A[1/Sqrt[(x_-a_) (b_-x_)],x_] := -((Sqrt[b - x] Sqrt[-a + x] ArcTan[(a + b - 2 x)/(2 Sqrt[b - x] Sqrt[-a + x])])/Sqrt[(a - x) (-b + x)]) /;FreeQ[{a,b},x],
  A[1/(x_^4+a_^4),x_] := (-2 ArcTan[1 - (Sqrt[2] x)/a] + 2 ArcTan[1 + (Sqrt[2] x)/a] - Log[a^2 - Sqrt[2] a x + x^2] + Log[a^2 + Sqrt[2] a x + x^2])/(4 Sqrt[2] a^3) /;FreeQ[{a},x],
  A[1/(a_^4-x_^4),x_] := ArcTan[x/a]/(2 a^3) - Log[-a + x]/(4 a^3) + Log[a + x]/(4 a^3) /;FreeQ[{a},x],
  A[x_^n_ Log[a_ x_],x_] := (x^(1 + n) (-1 + (1 + n) Log[a x]))/(1 + n)^2 /;FreeQ[{a,n},x],
  A[b_^(a_ x_),x_] := b^(a x)/(a Log[b]) /;FreeQ[{a},x],
  (*Integration with parameter*)

  (*Integration with E*)
  A[E^(a_ x_),x_] := E^(a x)/a /;FreeQ[{a},x],
  A[b_^(a_ x_),x_] := b^(a x)/(a Log[b]) /;FreeQ[{a,b},x],
  A[E^(a_ x_) Sin[b_ x_], x_] := (E^(a x) (-(b Cos[b x]) + a Sin[b x]))/(a^2 + b^2) /;FreeQ[{a,b},x],
  A[E^(a_ x_) Cos[b_ x_], x_] := (E^(a x) (a Cos[b x] + b Sin[b x]))/(a^2 + b^2) /;FreeQ[{a,b},x]
  (*Integration with E*)

};
EndPackage[]
IntTable[f_,x_]:=Module[
	{},
	ret=IntTable`A[f,x];

	If[Head[ret]===IntTable`A||Count[ret,_IntTable`A,Infinity]!=0,Return["NotFound"],Return[ret]]
];


IntTable[x^3,x]



IntTable[E^(2x)Cos[3x],x]



Global`IntTable[Sin[Global`x],Global`x]