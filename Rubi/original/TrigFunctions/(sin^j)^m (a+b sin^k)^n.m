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
Int[sin[c_.+d_.*x_],x_Symbol] :=
  -Cos[c+d*x]/d /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_],x_Symbol] :=
  Sin[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[1/sin[c_.+d_.*x_],x_Symbol] :=
  -ArcTanh[Cos[c+d*x]]/d /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Sec[a_.+b_.*x_],x_Symbol] :=
  ArcTanh[Sin[a+b*x]]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^2,x_Symbol] :=
  x/2 - Cos[c+d*x]*Sin[c+d*x]/(2*d) /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]^2,x_Symbol] :=
  x/2 + Cos[a+b*x]*Sin[a+b*x]/(2*b) /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[1/sin[c_.+d_.*x_]^2,x_Symbol] :=
  -Cot[c+d*x]/d /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Sec[a_.+b_.*x_]^2,x_Symbol] :=
  Tan[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_,x_Symbol] :=
  Dist[-1/d,Subst[Int[Expand[(1+x^2)^((-m-2)/2),x],x],x,Cot[c+d*x]]] /;
FreeQ[{c,d},x] && EvenQ[m] && m<-2


(* ::Code:: *)
Int[Sec[a_.+b_.*x_]^n_,x_Symbol] :=
  Dist[1/b,Subst[Int[Regularize[(1+x^2)^((n-2)/2),x],x],x,Tan[a+b*x]]] /;
FreeQ[{a,b},x] && EvenQ[n] && n>2


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_,x_Symbol] :=
  2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+1)/(d*(2*m+j+1)) + 
  Dist[(2*m+j+3)/(2*m+j+1),Int[(sin[c+d*x]^j)^(m+2),x]] /;
FreeQ[{c,d},x] && OneQ[j^2] && Not[EvenQ[m]] && RationalQ[m] && m<-1


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]^n_,x_Symbol] :=
  -Sin[a+b*x]*Cos[a+b*x]^(n+1)/(b*(n+1)) +
  Dist[(n+2)/(n+1),Int[Cos[a+b*x]^(n+2),x]] /;
FreeQ[{a,b},x] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[Sec[a_.+b_.*x_]^n_,x_Symbol] :=
  Sin[a+b*x]*Sec[a+b*x]^(n-1)/(b*(n-1)) + 
  Dist[(n-2)/(n-1),Int[Sec[a+b*x]^(n-2),x]] /;
FreeQ[{a,b},x] && RationalQ[n] && n>1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_,x_Symbol] :=
  Dist[-1/d,Subst[Int[Expand[(1-x^2)^((m-1)/2),x],x],x,Cos[c+d*x]]] /;
FreeQ[{c,d},x] && OddQ[m] && m>1


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]^n_,x_Symbol] :=
  Dist[1/b,Subst[Int[Expand[(1-x^2)^((n-1)/2),x],x],x,Sin[a+b*x]]] /;
FreeQ[{a,b},x] && OddQ[n] && n>1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_,x_Symbol] :=
  -2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m-1)/(d*(2*m+j-1)) + 
  Dist[(2*m+j-3)/(2*m+j-1),Int[(sin[c+d*x]^j)^(m-2),x]] /;
FreeQ[{c,d},x] && OneQ[j^2] && Not[OddQ[m]] && RationalQ[m] && m>1


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]^n_,x_Symbol] :=
  Sin[a+b*x]*Cos[a+b*x]^(n-1)/(b*n) +
  Dist[(n-1)/n,Int[Cos[a+b*x]^(n-2),x]] /;
FreeQ[{a,b},x] && RationalQ[n] && n>1


(* ::Code:: *)
Int[Sec[a_.+b_.*x_]^n_,x_Symbol] :=
  -Sin[a+b*x]*Sec[a+b*x]^(n+1)/(b*n) + 
  Dist[(n+1)/n,Int[Sec[a+b*x]^(n+2),x]] /;
FreeQ[{a,b},x] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+d_.*x_]),x_Symbol] :=
  x/Rt[a^2-b^2,2] + 
  2/(d*Rt[a^2-b^2,2])*ArcTan[Sim[b*Cos[c+d*x]/(a+Rt[a^2-b^2,2]+b*Sin[c + d*x])]] /;
FreeQ[{a,b,c,d},x] && PositiveQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cos[c_.+d_.*x_]),x_Symbol] :=
  x/Rt[a^2-b^2,2] - 2/(d*Rt[a^2-b^2,2])*ArcTan[Sim[b*Sin[c+d*x]/(a+Rt[a^2-b^2,2]+b*Cos[c + d*x])]] /;
FreeQ[{a,b,c,d},x] && PositiveQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+Pi/2+d_.*x_]),x_Symbol] :=
  2*ArcTan[(a-b)*Tan[(c+d*x)/2]/Rt[a^2-b^2,2]]/(d*Rt[a^2-b^2,2]) /;
FreeQ[{a,b,c,d},x] && PosQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+d_.*x_]),x_Symbol] :=
  2*ArcTan[(b+a*Tan[(c+d*x)/2])/Rt[a^2-b^2,2]]/(d*Rt[a^2-b^2,2]) /;
FreeQ[{a,b,c,d},x] && PosQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+Pi/2+d_.*x_]),x_Symbol] :=
  -2*ArcTanh[(a-b)*Tan[(c+d*x)/2]/Rt[b^2-a^2,2]]/(d*Rt[b^2-a^2,2]) /;
FreeQ[{a,b,c,d},x] && NegQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+d_.*x_]),x_Symbol] :=
  -2*ArcTanh[(b+a*Tan[(c+d*x)/2])/Rt[b^2-a^2,2]]/(d*Rt[b^2-a^2,2]) /;
FreeQ[{a,b,c,d},x] && NegQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*sin[c_.+d_.*x_]^(-1)),x_Symbol] :=
  x/a - Dist[b/a,Int[1/(b+a*sin[c+d*x]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_]^k_.)^2,x_Symbol] :=
  (a^2+(k+1)/(k+3)*b^2)*x - 2*b^2*Cos[c+d*x]*Sin[c+d*x]^k/(d*(k+3)) + 2*a*b*Int[sin[c+d*x]^k,x] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*sin[c_.+Pi/2+d_.*x_]],x_Symbol] :=
  2*Sqrt[Sim[a+b]]/d*EllipticE[(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  -2*Sqrt[Sim[a+b]]/d*EllipticE[Pi/4-(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  (a+b)*Sqrt[(a+b*Sin[c+d*x])/(a+b)]/Sqrt[a+b*Sin[c+d*x]]*Int[Sqrt[a/(a+b)+b/(a+b)*sin[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && Not[PositiveQ[a+b]]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*sin[c_.+Pi/2+d_.*x_]],x_Symbol] :=
  2/(d*Sqrt[Sim[a+b]])*EllipticF[(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  -2/(d*Sqrt[Sim[a+b]])*EllipticF[Pi/4-(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[(a+b*Sin[c+d*x])/(a+b)]/Sqrt[a+b*Sin[c+d*x]]*Int[1/Sqrt[a/(a+b)+b/(a+b)*sin[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && Not[PositiveQ[a+b]]


(* ::Code:: *)
Int[(b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  Dist[Sin[c+d*x]^n*(b*Csc[c+d*x])^n,Int[1/sin[c+d*x]^n,x]] /;
FreeQ[{b,c,d},x] && ZeroQ[n^2-1/4]


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  Dist[Sqrt[b+a*Sin[c+d*x]]/(Sqrt[Sin[c+d*x]]*Sqrt[a+b*Csc[c+d*x]]),
    Int[(b+a*sin[c+d*x])^n/sin[c+d*x]^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && IntegerQ[n-1/2] && -2<n<2


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  b^2*Cot[c+d*x]*(a+b*Csc[c+d*x])^(n+1)/(a*d*(n+1)*(a^2-b^2)) + 
  Dist[1/(a*(n+1)*(a^2-b^2)),
    Int[((a^2-b^2)*(n+1)-(a*b*(n+1))*sin[c+d*x]^(-1)+(b^2*(n+2))*sin[c+d*x]^(-2))*
      (a+b*sin[c+d*x]^(-1))^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  -b^2*Cot[c+d*x]*(a+b*Csc[c+d*x])^(n-2)/(d*(n-1)) + 
  Dist[1/(n-1),
    Int[(a^3*(n-1)+(b*(b^2*(n-2)+3*a^2*(n-1)))*sin[c+d*x]^(-1)+(a*b^2*(3*n-4))*sin[c+d*x]^(-2))*
      (a+b*sin[c+d*x]^(-1))^(n-3),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n>2


(* ::Code:: *)
Int[(b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  2*Cos[c+d*x]*(b*Sin[c+d*x]^k)^(n+1)/(b*d*(2*n+k+1)) + 
  Dist[(2*n+k+3)/(b^2*(2*n+k+1)),Int[(b*sin[c+d*x]^k)^(n+2),x]] /;
FreeQ[{b,c,d},x] && OneQ[k^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -2*b*Cos[c+d*x]*(b*Sin[c+d*x]^k)^(n-1)/(d*(2*n+k-1)) + 
  Dist[b^2*(2*n+k-3)/(2*n+k-1),Int[(b*sin[c+d*x]^k)^(n-2),x]] /;
FreeQ[{b,c,d},x] && OneQ[k^2] && RationalQ[n] && n>1


(* ::Code:: *)
Int[1/(sin[c_.+d_.*x_]*(a_.+b_.*sin[c_.+d_.*x_])),x_Symbol] :=
  1/a*Int[1/Sin[c+d*x],x] - b/a*Int[1/(a+b*Sin[c+d*x]),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[1/((a_.+b_.*sin[c_.+d_.*x_])*(e_+f_.*sin[c_.+d_.*x_])),x_Symbol] :=
  b/(b*e-a*f)*Int[1/(a+b*sin[c+d*x]),x] - 
  f/(b*e-a*f)*Int[1/(e+f*sin[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[b*e-a*f]


(* ::Code:: *)
Int[1/((a_.+b_.*sin[c_.+Pi/2+d_.*x_])*Sqrt[e_.+f_.*sin[c_.+Pi/2+d_.*x_]]),x_Symbol] :=
  2/(d*(a+b)*Rt[e+f,2])*EllipticPi[Sim[2*b/(a+b)],(c+d*x)/2,Sim[2*f/(e+f)]] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && PositiveQ[e+f]


(* ::Code:: *)
Int[1/((a_.+b_.*sin[c_.+d_.*x_])*Sqrt[e_.+f_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  2/(d*(a+b)*Rt[e+f,2])*EllipticPi[Sim[2*b/(a+b)],(c+d*x)/2-Pi/4,Sim[2*f/(e+f)]] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && PositiveQ[e+f]


(* ::Code:: *)
Int[1/((a_.+b_.*sin[c_.+d_.*x_])*Sqrt[e_.+f_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  Sqrt[(e+f*Sin[c+d*x])/(e+f)]/Sqrt[e+f*Sin[c+d*x]]*
    Int[1/((a+b*sin[c+d*x])*Sqrt[e/(e+f)+f/(e+f)*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && Not[PositiveQ[e+f]]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*sin[c_.+d_.*x_]]/(e_.+f_.*sin[c_.+d_.*x_]),x_Symbol] :=
  b/f*Int[1/Sqrt[a+b*sin[c+d*x]],x] + 
  (a*f-b*e)/f*Int[1/((e+f*sin[c+d*x])*Sqrt[a+b*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && NonzeroQ[a*f-b*e]


(* ::Code:: *)
Int[(a_.+b_.*sin[c_.+d_.*x_])^(3/2)/(e_.+f_.*sin[c_.+d_.*x_]),x_Symbol] :=
  b/f*Int[Sqrt[a+b*sin[c+d*x]],x] + 
  Dist[(a*f-b*e)/f,Int[Sqrt[a+b*sin[c+d*x]]/(e+f*sin[c+d*x]),x]] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && NonzeroQ[a*f-b*e]


(* ::Code:: *)
Int[1/(Sqrt[sin[c_.+d_.*x_]]*Sqrt[a_+b_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  2/(d*Sqrt[a+b])*EllipticF[ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d},x] && PositiveQ[b] && PositiveQ[b^2-a^2]


(* ::Code:: *)
Int[1/(Sqrt[sin[c_.+d_.*x_]]*Sqrt[a_+b_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  2*Sqrt[1+Sin[c+d*x]]/(d*Sqrt[a+b*Sin[c+d*x]])*
  Sqrt[(a+b*Sin[c+d*x])/((a+b)*(1+Sin[c+d*x]))]*
  EllipticF[ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[sin[c_.+d_.*x_]]*Sqrt[a_+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  -a*Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Int[(a+a*sin[c+d*x]+b*sin[c+d*x]^2)/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[sin[c_.+d_.*x_]]/Sqrt[a_+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  -Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] +
  Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*sin[c_.+d_.*x_]]/Sqrt[sin[c_.+d_.*x_]],x_Symbol] :=
  (a-b)*Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] +
  Dist[b,Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
(* Int[Sqrt[a_.+b_.*sin[c_.+d_.*x_]]/Sqrt[e_.+f_.*sin[c_.+d_.*x_]],x_Symbol] :=
  (a-b)*Int[1/(Sqrt[a+b*sin[c+d*x]]*Sqrt[e+f*sin[c+d*x]]),x] +
  Dist[b,Int[(1+sin[c+d*x])/(Sqrt[a+b*sin[c+d*x]]*Sqrt[e+f*sin[c+d*x]]),x]] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && NonzeroQ[b*e-a*f] *)


(* ::Code:: *)
Int[Sqrt[sin[c_.+d_.*x_]]/(a_+b_.*sin[c_.+d_.*x_])^(3/2),x_Symbol] :=
  -1/(a-b)*Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Dist[a/(a-b),Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*(a+b*sin[c+d*x])^(3/2)),x]] /; 
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*sin[c_.+d_.*x_]]/sin[c_.+d_.*x_]^(3/2),x_Symbol] :=
  Dist[a+b,Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x]] + 
  Dist[a,Int[(1-sin[c+d*x])/(sin[c+d*x]^(3/2)*Sqrt[a+b*sin[c+d*x]]),x]] /; 
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
(* Int[Sqrt[a_.+b_.*sin[c_.+d_.*x_]]/(e_.+f_.*sin[c_.+d_.*x_])^(3/2),x_Symbol] :=
  Dist[(a-b)/(e-f),Int[1/(Sqrt[a+b*sin[c+d*x]]*Sqrt[e+f*sin[c+d*x]]),x]] + 
  Dist[(b*e-a*f)/(e-f),Int[(1+sin[c+d*x])/(Sqrt[a+b*sin[c+d*x]]*(e+f*sin[c+d*x])^(3/2)),x]] /; 
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && NonzeroQ[b*e-a*f] *)


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^(3/2)/Sqrt[a_+b_.*sin[c_.+d_.*x_]],x_Symbol] :=
  -a/(2*b)*Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Dist[1/(2*b),
    Int[(a+a*sin[c+d*x]+2*b*sin[c+d*x]^2)/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_])^(3/2)/Sqrt[sin[c_.+d_.*x_]],x_Symbol] :=
  3*a*b/2*Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Dist[1/2,
    Int[(a*(2*a-3*b)+a*b*sin[c+d*x]+2*b^2*sin[c+d*x]^2)/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^(3/2)/(a_+b_.*sin[c_.+d_.*x_])^(3/2),x_Symbol] :=
  1/b*Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Dist[1/b,Int[(-a-(a+b)*sin[c+d*x])/(Sqrt[sin[c+d*x]]*(a+b*sin[c+d*x])^(3/2)),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_])^(3/2)/sin[c_.+d_.*x_]^(3/2),x_Symbol] :=
  b^2*Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Int[(a^2+b*(2*a-b)*sin[c+d*x])/(sin[c+d*x]^(3/2)*Sqrt[a+b*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
(* Int[(a_.+b_.*sin[c_.+d_.*x_])^(3/2)/(e_.+f_.*sin[c_.+d_.*x_])^(3/2),x_Symbol] :=
  b^2/f*Int[(1+sin[c+d*x])/(Sqrt[a+b*sin[c+d*x]]*Sqrt[e+f*sin[c+d*x]]),x] + 
  Dist[1/f,
    Int[(a^2*f-b^2*e+b*(2*a*f-b*(e+f))*sin[c+d*x])/(Sqrt[a+b*sin[c+d*x]]*(e+f*sin[c+d*x])^(3/2)),x]] /;
FreeQ[{a,b,c,d,e,f},x] && NonzeroQ[a^2-b^2] && NonzeroQ[e^2-f^2] && NonzeroQ[b*e-a*f] *)


(* ::Code:: *)
Int[1/(Sqrt[sin[c_.+d_.*x_]]*(a_+b_.*sin[c_.+d_.*x_])^(3/2)),x_Symbol] :=
  1/(a-b)*Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] - 
  Dist[b/(a-b),Int[(1+sin[c+d*x])/(Sqrt[sin[c+d*x]]*(a+b*sin[c+d*x])^(3/2)),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[1/(sin[c_.+d_.*x_]^(3/2)*Sqrt[a_+b_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] + 
  Int[(1-sin[c+d*x])/(sin[c+d*x]^(3/2)*Sqrt[a+b*sin[c+d*x]]),x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*sin[c_.+d_.*x_]]/(Sqrt[sin[c_.+d_.*x_]]*(A_+B_.*sin[c_.+d_.*x_])),x_Symbol] :=
  Sqrt[a+b]/(d*A)*EllipticE[ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A-B] && PositiveQ[b] && PositiveQ[b^2-a^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*sin[c_.+d_.*x_]]/(Sqrt[sin[c_.+d_.*x_]]*(A_+B_.*sin[c_.+d_.*x_])),x_Symbol] :=
  (a+b)*Sqrt[1+Sin[c+d*x]]/(d*A*Sqrt[a+b*Sin[c+d*x]])*Sqrt[(a+b*Sin[c+d*x])/((a+b)*(1+Sin[c+d*x]))]*
  EllipticE[ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A-B] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[sin[c_.+d_.*x_]]/(Sqrt[a_.+b_.*sin[c_.+d_.*x_]]*(A_+B_.*sin[c_.+d_.*x_])),x_Symbol] :=
  a/(A*(a-b))*Int[1/(Sqrt[sin[c+d*x]]*Sqrt[a+b*sin[c+d*x]]),x] - 
  1/(a-b)*Int[Sqrt[a+b*sin[c+d*x]]/(Sqrt[sin[c+d*x]]*(A+B*sin[c+d*x])),x] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A-B] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(A_+B_.*sin[c_.+d_.*x_])/(Sqrt[sin[c_.+d_.*x_]]*Sqrt[a_+b_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  4*A/(d*Sqrt[a+b])*EllipticPi[-1,ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A-B] && PositiveQ[b] && PositiveQ[b^2-a^2]


(* ::Code:: *)
Int[(A_+B_.*sin[c_.+d_.*x_])/(Sqrt[sin[c_.+d_.*x_]]*Sqrt[a_+b_.*sin[c_.+d_.*x_]]),x_Symbol] :=
  4*A*Sqrt[1+Sin[c+d*x]]/(d*Sqrt[a+b*Sin[c+d*x]])*
  Sqrt[(a+b*Sin[c+d*x])/((a+b)*(1+Sin[c+d*x]))]*
  EllipticPi[-1,ArcSin[Tan[(c-Pi/2+d*x)/2]],-Sim[(a-b)/(a+b)]] /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[A-B] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_.*(b_.*sin[c_.+d_.*x_]^k_.)^n_.,x_Symbol] :=
  Dist[1/b^(k*m),Int[(b*sin[c+d*x]^k)^(k*m+n),x]] /;
FreeQ[{b,c,d,n},x] && OneQ[k^2] && IntegerQ[m]


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(b_*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  Dist[b^(n-1/2)*Sqrt[b*Sin[c+d*x]^k]/(Sqrt[Sin[c+d*x]^j])^(j*k),Int[sin[c+d*x]^(j*m+k*n),x]] /;
FreeQ[{b,c,d},x] && OneQ[j^2,k^2] && IntegerQ[m-1/2] && IntegerQ[n-1/2] && n>0


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(b_*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  Dist[b^(n+1/2)*(Sqrt[Sin[c+d*x]^j])^(j*k)/Sqrt[b*Sin[c+d*x]^k],Int[sin[c+d*x]^(j*m+k*n),x]] /;
FreeQ[{b,c,d},x] && OneQ[j^2,k^2] && IntegerQ[m-1/2] && IntegerQ[n-1/2] && n<0


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_./(a_+b_.*sin[c_.+d_.*x_]^(-1)),x_Symbol] :=
  Int[(sin[c+d*x]^j)^(m+j)/(b+a*sin[c+d*x]),x] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2] && NonzeroQ[a^2-b^2] && RationalQ[m] && -1/2<=m+j<=3/2


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_.*(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  Dist[Sqrt[b+a*Sin[c+d*x]]/(Sqrt[Sin[c+d*x]]*Sqrt[a+b*Csc[c+d*x]]),
    Int[sin[c+d*x]^(m-n)*(b+a*sin[c+d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && IntegerQ[m] && IntegerQ[n-1/2] && 
  (m==1 && -1<n<2 || m==-1 && -2<n<1  || m==-2 && -2<n<0)


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  Dist[Sqrt[b+a*Sin[c+d*x]]/((Sqrt[Sin[c+d*x]^j])^j*Sqrt[a+b*Csc[c+d*x]]),
    Int[sin[c+d*x]^(j*m-n)*(b+a*sin[c+d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2] && NonzeroQ[a^2-b^2] && IntegerQ[m-1/2] && IntegerQ[n-1/2] && 
  -1<n<2 && -1<=j*m-n<=1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^(-1))^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  Dist[Sqrt[Csc[c+d*x]]*Sqrt[Sin[c+d*x]],
    Int[(a+b*sin[c+d*x]^k)^n/sin[c+d*x]^m,x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && NonzeroQ[a^2-b^2] && IntegerQ[m-1/2] && RationalQ[n] && 
  (k===1 || -1<m<1 && -1<=n<1)


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^2,x_Symbol] :=
  a^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)/(d*(j*k*m+(k+1)/2)) + 
  Dist[1/(j*k*m+(k+1)/2),
    Int[(sin[c+d*x]^j)^(m+j*k)*
      Sim[2*a*b*(j*k*m+(k+1)/2)+(a^2+(a^2+b^2)*(j*k*m+(k+1)/2))*sin[c+d*x]^k,x],x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && RationalQ[m] && j*k*m+(k+1)/2!=0 && j*k*m<=-1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^2,x_Symbol] :=
  -b^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)/(d*(j*k*m+(k+3)/2)) + 
  Dist[1/(j*k*m+(k+3)/2),
    Int[(sin[c+d*x]^j)^m*
      Sim[a^2+(a^2+b^2)*(j*k*m+(k+1)/2)+2*a*b*(j*k*m+(k+3)/2)*sin[c+d*x]^k,x],x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && RationalQ[m] && j*k*m+(k+3)/2!=0 && j*k*m>=-1


(* ::Code:: *)
Int[(a_+b_.*sin[c_.+d_.*x_])^n_,x_Symbol] :=
  -b*Cos[c+d*x]*(a+b*Sin[c+d*x])^(n+1)/(d*(n+1)*(a^2-b^2)) + 
  Dist[1/((n+1)*(a^2-b^2)),Int[(a*(n+1)-b*(n+2)*sin[c+d*x])*(a+b*sin[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^(-1)*(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  -b*Cot[c+d*x]*(a+b*Csc[c+d*x])^(n+1)/(d*(n+1)*(a^2-b^2)) + 
  Dist[1/((n+1)*(a^2-b^2)),Int[sin[c+d*x]^(-1)*(a*(n+1)-b*(n+2)*sin[c+d*x]^(-1))*(a+b*sin[c+d*x]^(-1))^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(a_.+b_.*sin[c_.+d_.*x_])^n_,x_Symbol] :=
  -b*Cos[c+d*x]*(a+b*Sin[c+d*x])^(n-1)/(d*n) + 
  Dist[1/n,Int[Sim[a^2*n+b^2*(n-1)+a*b*(2*n-1)*sin[c+d*x],x]*(a+b*sin[c+d*x])^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n>1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^(-1)*(a_+b_.*sin[c_.+d_.*x_]^(-1))^n_,x_Symbol] :=
  -b*Cot[c+d*x]*(a+b*Csc[c+d*x])^(n-1)/(d*n) + 
  Dist[1/n,Int[sin[c+d*x]^(-1)*(a^2*n+b^2*(n-1)+a*b*(2*n-1)*sin[c+d*x]^(-1))*(a+b*sin[c+d*x]^(-1))^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n>1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  a*Cos[c+d*x]*Sin[c+d*x]^((k-1)/2)*(a+b*Sin[c+d*x]^k)^(n+1)/(d*(n+1)*(a^2-b^2)) - 
  Dist[1/((n+1)*(a^2-b^2)),
    Int[Sin[c+d*x]^((k-1)/2)*(b*(n+1)-a*(n+2)*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(3*k-1)/2] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_/(a_+b_.*sin[c_.+d_.*x_]^k_.),x_Symbol] :=
  1/b*Int[Sin[c+d*x]^((k-1)/2),x] - 
  a/b*Int[Sin[c+d*x]^((k-1)/2)/(a+b*Sin[c+d*x]^k),x] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(3*k-1)/2] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -Cos[c+d*x]*Sin[c+d*x]^((k-1)/2)*(a+b*Sin[c+d*x]^k)^n/(d*(n+1)) + 
  Dist[n/(n+1),
    Int[Sin[c+d*x]^((k-1)/2)*(b+a*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(3*k-1)/2] && RationalQ[n] && n>-1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -a^2*Cos[c+d*x]*Sin[c+d*x]^((k-1)/2)*(a+b*Sin[c+d*x]^k)^(n+1)/(b*d*(n+1)*(a^2-b^2)) + 
  Dist[1/(b*(n+1)*(a^2-b^2)),
    Int[Sin[c+d*x]^((k-1)/2)*(a*b*(n+1)-(a^2+b^2*(n+1))*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(5*k-1)/2] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_/(a_+b_.*sin[c_.+d_.*x_]^k_.),x_Symbol] :=
  -Cos[c+d*x]*Sin[c+d*x]^((k-1)/2)/(b*d) - 
  Dist[a/b,Int[Sin[c+d*x]^((3*k-1)/2)/(a+b*Sin[c+d*x]^k),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(5*k-1)/2]


(* ::Code:: *)
Int[sin[c_.+d_.*x_]^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -Cos[c+d*x]*Sin[c+d*x]^((k-1)/2)*(a+b*Sin[c+d*x]^k)^(n+1)/(b*d*(n+2)) + 
  Dist[1/(b*(n+2)),
    Int[Sin[c+d*x]^((k-1)/2)*(b*(n+1)-a*Sin[c+d*x]^k)*(a+b*Sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d},x] && OneQ[k^2] && ZeroQ[m-(5*k-1)/2] && RationalQ[n] && n>-1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -a^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m-2*j*k)*(a+b*Sin[c+d*x]^k)^(n+1)/(b*d*(n+1)*(a^2-b^2)) + 
  Dist[1/(b*(n+1)*(a^2-b^2)),
    Int[(sin[c+d*x]^j)^(m-3*j*k)*
      Sim[a^2*(j*k*m+(k-1)/2-2)+a*b*(n+1)*sin[c+d*x]^k-
        (b^2*(n+1)+a^2*(j*k*m+(k-1)/2-1))*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && j*k*m>2 && n<-1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  a*Cos[c+d*x]*(Sin[c+d*x]^j)^(m-j*k)*(a+b*Sin[c+d*x]^k)^(n+1)/(d*(n+1)*(a^2-b^2)) - 
  Dist[1/((n+1)*(a^2-b^2)),
    Int[(sin[c+d*x]^j)^(m-2*j*k)*
      Sim[a*(j*k*m+(k-1)/2-1)+b*(n+1)*sin[c+d*x]^k-a*(j*k*m+n+(k+1)/2)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  1<j*k*m<2 && n<-1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -b*Cos[c+d*x]*(Sin[c+d*x]^j)^m*(a+b*Sin[c+d*x]^k)^(n+1)/(d*(n+1)*(a^2-b^2)) + 
  Dist[1/((n+1)*(a^2-b^2)),
    Int[(sin[c+d*x]^j)^(m-j*k)*
      Sim[b*(j*k*m+(k-1)/2)+a*(n+1)*sin[c+d*x]^k-b*(j*k*m+n+(k+1)/2+1)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  0<j*k*m<1 && n<-1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(a_.+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -Cos[c+d*x]*(Sin[c+d*x]^j)^(m-2*j*k)*(a+b*Sin[c+d*x]^k)^(n+1)/(b*d*(j*k*m+n+(k-1)/2)) + 
  Dist[1/(b*(j*k*m+n+(k-1)/2)),
    Int[(sin[c+d*x]^j)^(m-3*j*k)*
      Sim[a*(j*k*m+(k-1)/2-2)+b*(j*k*m+n+(k-1)/2-1)*sin[c+d*x]^k-
        a*(j*k*m+(k-1)/2-1)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && j*k*m>2 && -1<=n<0


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_*(a_.+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -Cos[c+d*x]*(Sin[c+d*x]^j)^(m-j*k)*(a+b*Sin[c+d*x]^k)^n/(d*(j*k*m+n+(k-1)/2)) + 
  Dist[1/(j*k*m+n+(k-1)/2),
    Int[(sin[c+d*x]^j)^(m-2*j*k)*
      Sim[a*(j*k*m+(k-1)/2-1)+b*(j*k*m+n+(k-1)/2-1)*sin[c+d*x]^k+a*n*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m>1 && j*k*m!=2 && 0<n<1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_.+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -b^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^(n-2)/(d*(j*k*m+n+(k-1)/2)) + 
  Dist[1/(j*k*m+n+(k-1)/2),
   Int[(sin[c+d*x]^j)^m*
    Sim[a*(a^2*(n-1)+(a^2+b^2)*(j*k*m+(k+1)/2))+b*(-b^2+(3*a^2+b^2)*(j*k*m+n+(k-1)/2))*sin[c+d*x]^k+
      a*b^2*(2*j*k*m+3*n+k-3)*sin[c+d*x]^(2*k),x]*
    (a+b*sin[c+d*x]^k)^(n-3),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m>=-1 && j*k*m!=1 && j*k*m!=2 && n>2


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_.+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  -b*Cos[c+d*x]*(Sin[c+d*x]^j)^m*(a+b*Sin[c+d*x]^k)^(n-1)/(d*(j*k*m+n+(k-1)/2)) + 
  Dist[1/(j*k*m+n+(k-1)/2),
    Int[(sin[c+d*x]^j)^(m-j*k)*
      Sim[a*b*(j*k*m+(k-1)/2)+((a^2+b^2)*(j*k*m+n+(k-1)/2)-b^2)*sin[c+d*x]^k+
        a*b*(j*k*m+2*n+(k-1)/2-1)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m>0 && j*k*m!=1 && j*k*m!=2 && 1<n<2


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  a^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^(n-2)/(d*(j*k*m+(k+1)/2)) + 
  Dist[1/(j*k*m+(k+1)/2),
    Int[(sin[c+d*x]^j)^(m+j*k)*
      Sim[a^2*b*(2*j*k*m-n+k+3)+a*(a^2+(a^2+3*b^2)*(j*k*m+(k+1)/2))*sin[c+d*x]^k+
        b*(a^2*(n-1)+(a^2+b^2)*(j*k*m+(k+1)/2))*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n-3),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m<-1 && n>2


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  a*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^(n-1)/(d*(j*k*m+(k+1)/2)) + 
  Dist[1/(j*k*m+(k+1)/2),
    Int[(sin[c+d*x]^j)^(m+j*k)*
      Sim[a*b*(j*k*m-n+(k+1)/2+1)+(a^2+(a^2+b^2)*(j*k*m+(k+1)/2))*sin[c+d*x]^k+
        a*b*(j*k*m+n+(k+1)/2)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m<-1 && 1<n<2


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_.+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^n/(d*(j*k*m+(k+1)/2)) + 
  Dist[1/(j*k*m+(k+1)/2),
    Int[(sin[c+d*x]^j)^(m+j*k)*
      Sim[-b*n+a*(j*k*m+(k+1)/2+1)*sin[c+d*x]^k+b*(j*k*m+n+(k+1)/2+1)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m+(k+1)/2!=0 && j*k*m<=-1 && 0<n<1


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^(n+1)/(a*d*(j*k*m+(k+1)/2)) + 
  Dist[1/(a*(j*k*m+(k+1)/2)),
    Int[(sin[c+d*x]^j)^(m+j*k)*
      Sim[-b*(j*k*m+n+(k+1)/2+1)+a*(j*k*m+(k+1)/2+1)*sin[c+d*x]^k+
        b*(j*k*m+n+(k+1)/2+2)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^n,x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m+(k+1)/2!=0 && j*k*m<=-1 && -1<=n<0


(* ::Code:: *)
Int[(sin[c_.+d_.*x_]^j_.)^m_.*(a_+b_.*sin[c_.+d_.*x_]^k_.)^n_,x_Symbol] :=
  b^2*Cos[c+d*x]*(Sin[c+d*x]^j)^(m+j*k)*(a+b*Sin[c+d*x]^k)^(n+1)/(a*d*(n+1)*(a^2-b^2)) + 
  Dist[1/(a*(n+1)*(a^2-b^2)),
    Int[(sin[c+d*x]^j)^m*
      Sim[(a^2-b^2)*(n+1)-b^2*(j*k*m+(k+1)/2)-a*b*(n+1)*sin[c+d*x]^k+
        b^2*(j*k*m+n+(k+1)/2+2)*sin[c+d*x]^(2*k),x]*
      (a+b*sin[c+d*x]^k)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && OneQ[j^2,k^2] && NonzeroQ[a^2-b^2] && RationalQ[m,n] && 
  j*k*m<0 && n<-1


