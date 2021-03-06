(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[Tanh[a_.+b_.*x_],x_Symbol] :=
  Log[Cosh[a+b*x]]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Coth[a_.+b_.*x_],x_Symbol] :=
  Log[Sinh[a+b*x]]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Tanh[a_.+b_.*x_]^2,x_Symbol] :=
  x - Tanh[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Coth[a_.+b_.*x_]^2,x_Symbol] :=
  x - Coth[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[(c_.*Tanh[a_.+b_.*x_])^n_,x_Symbol] :=
  -c*(c*Tanh[a+b*x])^(n-1)/(b*(n-1)) + 
  Dist[c^2,Int[(c*Tanh[a+b*x])^(n-2),x]] /;
FreeQ[{a,b,c},x] && RationalQ[n] && n>1


(* ::Code:: *)
Int[(c_.*Coth[a_.+b_.*x_])^n_,x_Symbol] :=
  -c*(c*Coth[a+b*x])^(n-1)/(b*(n-1)) + 
  Dist[c^2,Int[(c*Coth[a+b*x])^(n-2),x]] /;
FreeQ[{a,b,c},x] && RationalQ[n] && n>1


(* ::Code:: *)
Int[(c_.*Tanh[a_.+b_.*x_])^n_,x_Symbol] :=
  (c*Tanh[a+b*x])^(n+1)/(b*c*(n+1)) + 
  Dist[1/c^2,Int[(c*Tanh[a+b*x])^(n+2),x]] /;
FreeQ[{a,b,c},x] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(c_.*Coth[a_.+b_.*x_])^n_,x_Symbol] :=
  (c*Coth[a+b*x])^(n+1)/(b*c*(n+1)) + 
  Dist[1/c^2,Int[(c*Coth[a+b*x])^(n+2),x]] /;
FreeQ[{a,b,c},x] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[1/(a_+b_.*Tanh[c_.+d_.*x_]),x_Symbol] :=
  x/(2*a) - a/(2*b*d*(a+b*Tanh[c+d*x])) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Coth[c_.+d_.*x_]),x_Symbol] :=
  x/(2*a) - a/(2*b*d*(a+b*Coth[c+d*x])) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Tanh[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[2]*b/(d*Rt[a,2])*ArcTanh[Sqrt[a+b*Tanh[c+d*x]]/(Sqrt[2]*Rt[a,2])] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && PosQ[a]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Coth[c_.+d_.*x_]],x_Symbol] :=
  (Sqrt[2]*b/(d*Rt[a,2])*ArcCoth[Sqrt[a+b*Coth[c+d*x]]/(Sqrt[2]*Rt[a,2])]) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && PosQ[a]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Tanh[c_.+d_.*x_]],x_Symbol] :=
  -Sqrt[2]*b/(d*Rt[-a,2])*ArcTan[Sqrt[a+b*Tanh[c+d*x]]/(Sqrt[2]*Rt[-a,2])] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && NegQ[a]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Coth[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[2]*b/(d*Rt[-a,2])*ArcCot[Sqrt[a+b*Coth[c+d*x]]/(Sqrt[2]*Rt[-a,2])] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && NegQ[a]


(* ::Code:: *)
Int[(a_+b_.*Tanh[c_.+d_.*x_])^n_,x_Symbol] :=
  -a^2*(a+b*Tanh[c+d*x])^(n-1)/(b*d*(n-1)) + 
  Dist[2*a,Int[(a+b*Tanh[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Coth[c_.+d_.*x_])^n_,x_Symbol] :=
  -a^2*(a+b*Coth[c+d*x])^(n-1)/(b*d*(n-1)) + 
  Dist[2*a,Int[(a+b*Coth[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Tanh[c_.+d_.*x_])^n_,x_Symbol] :=
  a*(a+b*Tanh[c+d*x])^n/(2*b*d*n) + 
  Dist[1/(2*a),Int[(a+b*Tanh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[n] && n<0


(* ::Code:: *)
Int[(a_+b_.*Coth[c_.+d_.*x_])^n_,x_Symbol] :=
  a*(a+b*Coth[c+d*x])^n/(2*b*d*n) + 
  Dist[1/(2*a),Int[(a+b*Coth[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[n] && n<0


(* ::Code:: *)
Int[1/(a_+b_.*Tanh[c_.+d_.*x_]),x_Symbol] :=
  a*x/(a^2-b^2) - b*Log[a*Cosh[c+d*x]+b*Sinh[c+d*x]]/(d*(a^2-b^2)) /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Coth[c_.+d_.*x_]),x_Symbol] :=
  a*x/(a^2-b^2) - b*Log[b*Cosh[c+d*x]+a*Sinh[c+d*x]]/(d*(a^2-b^2)) /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(A_.+B_.*Tanh[c_.+d_.*x_])/(a_.+b_.*Tanh[c_.+d_.*x_]),x_Symbol] :=
  B*x/b + Dist[(b*A-a*B)/b,Int[1/(a+b*Tanh[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B]


(* ::Code:: *)
Int[(A_.+B_.*Coth[c_.+d_.*x_])/(a_.+b_.*Coth[c_.+d_.*x_]),x_Symbol] :=
  B*x/b + Dist[(b*A-a*B)/b,Int[1/(a+b*Coth[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B]


(* ::Code:: *)
Int[(A_+B_.*Tanh[c_.+d_.*x_])/Sqrt[a_.+b_.*Tanh[c_.+d_.*x_]],x_Symbol] :=
  2*B/(d*Sqrt[(b*A+a*B)/B])*ArcTanh[Sqrt[a+b*Tanh[c+d*x]]/Sqrt[(b*A+a*B)/B]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A^2-B^2] && NonzeroQ[b*A+a*B]


(* ::Code:: *)
Int[(A_+B_.*Coth[c_.+d_.*x_])/Sqrt[a_.+b_.*Coth[c_.+d_.*x_]],x_Symbol] :=
  2*B/(d*Sqrt[(b*A+a*B)/B])*ArcTanh[Sqrt[a+b*Coth[c+d*x]]/Sqrt[(b*A+a*B)/B]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A^2-B^2] && NonzeroQ[b*A+a*B]


(* ::Code:: *)
Int[(A_.+B_.*Tanh[c_.+d_.*x_])/Sqrt[a_.+b_.*Tanh[c_.+d_.*x_]],x_Symbol] :=
  Dist[(A+B)/2,Int[(1+Tanh[c+d*x])/Sqrt[a+b*Tanh[c+d*x]],x]] +
  Dist[(A-B)/2,Int[(1-Tanh[c+d*x])/Sqrt[a+b*Tanh[c+d*x]],x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[A^2-B^2] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(A_.+B_.*Coth[c_.+d_.*x_])/Sqrt[a_.+b_.*Coth[c_.+d_.*x_]],x_Symbol] :=
  Dist[(A+B)/2,Int[(1+Coth[c+d*x])/Sqrt[a+b*Coth[c+d*x]],x]] +
  Dist[(A-B)/2,Int[(1-Coth[c+d*x])/Sqrt[a+b*Coth[c+d*x]],x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[A^2-B^2] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(A_.+B_.*Tanh[c_.+d_.*x_])*(a_+b_.*Tanh[c_.+d_.*x_])^n_.,x_Symbol] :=
  -B*(a+b*Tanh[c+d*x])^n/(d*n) + 
  Int[(a*A+b*B+(b*A+a*B)*Tanh[c+d*x])*(a+b*Tanh[c+d*x])^(n-1),x] /;
FreeQ[{a,b,c,d,A,B},x] && RationalQ[n] && n>0


(* ::Code:: *)
Int[(A_.+B_.*Coth[c_.+d_.*x_])*(a_+b_.*Coth[c_.+d_.*x_])^n_.,x_Symbol] :=
  -B*(a+b*Coth[c+d*x])^n/(d*n) + 
  Int[(a*A+b*B+(b*A+a*B)*Coth[c+d*x])*(a+b*Coth[c+d*x])^(n-1),x] /;
FreeQ[{a,b,c,d,A,B},x] && RationalQ[n] && n>0


(* ::Code:: *)
Int[(A_.+B_.*Tanh[c_.+d_.*x_])*(a_+b_.*Tanh[c_.+d_.*x_])^n_,x_Symbol] :=
  -(b*A-a*B)*(a+b*Tanh[c+d*x])^(n+1)/(d*(a^2-b^2)*(n+1)) + 
  Dist[1/(a^2-b^2),Int[(a*A-b*B-(b*A-a*B)*Tanh[c+d*x])*(a+b*Tanh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(A_.+B_.*Coth[c_.+d_.*x_])*(a_+b_.*Coth[c_.+d_.*x_])^n_,x_Symbol] :=
  -(b*A-a*B)*(a+b*Coth[c+d*x])^(n+1)/(d*(a^2-b^2)*(n+1)) + 
  Dist[1/(a^2-b^2),Int[(a*A-b*B-(b*A-a*B)*Coth[c+d*x])*(a+b*Coth[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[u_.*(a_+b_.*Tan[v_]^2)^m_,x_Symbol] :=
  Dist[b^m,Int[u*Sec[v]^(2*m),x]] /;
FreeQ[{a,b,m},x] && ZeroQ[a-b] && IntegerQ[m]


(* ::Code:: *)
Int[u_.*(a_+b_.*Tan[v_]^2)^m_,x_Symbol] :=
  Int[u*(b*Sec[v]^2)^m,x] /;
FreeQ[{a,b,m},x] && ZeroQ[a-b] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[1/(a_+b_.*Tanh[c_.+d_.*x_]^2),x_Symbol] :=
  x/(a+b) + Sqrt[b]*ArcTan[Sqrt[b]*Tanh[c+d*x]/Sqrt[a]]/(Sqrt[a]*d*(a+b)) /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b]


(* ::Code:: *)
Int[1/(a_+b_.*Coth[c_.+d_.*x_]^2),x_Symbol] :=
  x/(a+b) + Sqrt[b]*ArcTan[Sqrt[b]*Coth[c+d*x]/Sqrt[a]]/(Sqrt[a]*d*(a+b)) /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b]


(* ::Code:: *)
Int[x_^m_.*Tanh[a_.+b_.*x_^n_.],x_Symbol] :=
  x^(m+1)/(m+1) - 
  Dist[2,Int[x^m/(1+E^(2*a+2*b*x^n)),x]] /;
FreeQ[{a,b,n},x] && IntegerQ[m] && m>0 && NonzeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_.*Coth[a_.+b_.*x_^n_.],x_Symbol] :=
  x^(m+1)/(m+1) - 
  Dist[2,Int[x^m/(1-E^(2*a+2*b*x^n)),x]] /;
FreeQ[{a,b,n},x] && IntegerQ[m] && m>0 && NonzeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_.*Tanh[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -x^(m-n+1)*Tanh[a+b*x^n]^(p-1)/(b*n*(p-1)) + 
  Dist[(m-n+1)/(b*n*(p-1)),Int[x^(m-n)*Tanh[a+b*x^n]^(p-1),x]] + 
  Int[x^m*Tanh[a+b*x^n]^(p-2),x] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>1 && NonzeroQ[m-n+1] && 0<n<=m


(* ::Code:: *)
Int[x_^m_.*Coth[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -x^(m-n+1)*Coth[a+b*x^n]^(p-1)/(b*n*(p-1)) + 
  Dist[(m-n+1)/(b*n*(p-1)),Int[x^(m-n)*Coth[a+b*x^n]^(p-1),x]] + 
  Int[x^m*Coth[a+b*x^n]^(p-2),x] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>1 && NonzeroQ[m-n+1] && 0<n<=m


(* ::Code:: *)
Int[x_*Tanh[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Log[Cosh[a+b*x+c*x^2]]/(2*c) -
  Dist[b/(2*c),Int[Tanh[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[x_*Coth[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Log[Sinh[a+b*x+c*x^2]]/(2*c) -
  Dist[b/(2*c),Int[Coth[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
(* Int[x_^m_*Tanh[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  x^(m-1)*Log[Cosh[a+b*x+c*x^2]]/(2*c) -
  Dist[b/(2*c),Int[x^(m-1)*Tanh[a+b*x+c*x^2],x]] -
  Dist[(m-1)/(2*c),Int[x^(m-2)*Log[Cosh[a+b*x+c*x^2]],x]] /;
FreeQ[{a,b,c},x] && RationalQ[m] && m>1 *)


(* ::Code:: *)
(* Int[x_^m_*Coth[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  x^(m-1)*Log[Sinh[a+b*x+c*x^2]]/(2*c) -
  Dist[b/(2*c),Int[x^(m-1)*Coth[a+b*x+c*x^2],x]] -
  Dist[(m-1)/(2*c),Int[x^(m-2)*Log[Sinh[a+b*x+c*x^2]],x]] /;
FreeQ[{a,b,c},x] && RationalQ[m] && m>1 *)



