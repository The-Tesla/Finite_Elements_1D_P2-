function [ elemFi ] = SM_elem_P2(f,X,T,i)
%calcule le second membre élémentaire dans l'élément Ti
xi=[X(T(i,1));(X(T(i,2))+X(T(i,1)))/2;X(T(i,2))];

A=quadgk(@(x)phi_P2(x,1, xi).*f(x),xi(1),xi(3));
B=quadgk(@(x)phi_P2(x,2, xi).*f(x),xi(1),xi(3));
C=quadgk(@(x)phi_P2(x,3, xi).*f(x),xi(1),xi(3));

elemFi=[A;B;C];

end