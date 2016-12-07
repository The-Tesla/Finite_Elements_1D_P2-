
function [ elemi ] = mat_elem_P2(alpha,beta,gamma,X,T,i)
xi=[X(T(i,1));(X(T(i,2))+X(T(i,1)))/2;X(T(i,2))];

A=quadgk(@(x) d_phi_P2(x,1, xi).*d_phi_P2(x,1, xi),xi(1),xi(3));
B=quadgk(@(x) d_phi_P2(x,2, xi).*d_phi_P2(x,1, xi),xi(1),xi(3));
C=quadgk(@(x) d_phi_P2(x,3, xi).*d_phi_P2(x,1, xi),xi(1),xi(3));
D=quadgk(@(x) d_phi_P2(x,2, xi).*d_phi_P2(x,2, xi),xi(1),xi(3));
E=quadgk(@(x) d_phi_P2(x,2, xi).*d_phi_P2(x,3, xi),xi(1),xi(3));
F=quadgk(@(x) d_phi_P2(x,3, xi).*d_phi_P2(x,3, xi),xi(1),xi(3));
elemKi=alpha*[A B C;B D E;C E F];


A=quadgk(@(x) phi_P2(x,1, xi).*phi_P2(x,1, xi),xi(1),xi(3));
B=quadgk(@(x) phi_P2(x,2, xi).*phi_P2(x,1, xi),xi(1),xi(3));
C=quadgk(@(x) phi_P2(x,3, xi).*phi_P2(x,1, xi),xi(1),xi(3));
D=quadgk(@(x) phi_P2(x,2, xi).*phi_P2(x,2, xi),xi(1),xi(3));
E=quadgk(@(x) phi_P2(x,2, xi).*phi_P2(x,3, xi),xi(1),xi(3));
F=quadgk(@(x) phi_P2(x,3, xi).*phi_P2(x,3, xi),xi(1),xi(3));
elemMi=beta*[A B C;B D E;C E F];


A=quadgk(@(x) d_phi_P2(x,1, xi).*phi_P2(x,1, xi),xi(1),xi(3));
B=quadgk(@(x) d_phi_P2(x,2, xi).*phi_P2(x,1, xi),xi(1),xi(3));
C=quadgk(@(x) d_phi_P2(x,3, xi).*phi_P2(x,1, xi),xi(1),xi(3));
D=quadgk(@(x) d_phi_P2(x,1, xi).*phi_P2(x,2, xi),xi(1),xi(3));
E=quadgk(@(x) d_phi_P2(x,2, xi).*phi_P2(x,2, xi),xi(1),xi(3));
F=quadgk(@(x) d_phi_P2(x,3, xi).*phi_P2(x,2, xi),xi(1),xi(3));
G=quadgk(@(x) d_phi_P2(x,1, xi).*phi_P2(x,3, xi),xi(1),xi(3));
H=quadgk(@(x) d_phi_P2(x,2, xi).*phi_P2(x,3, xi),xi(1),xi(3));
K=quadgk(@(x) d_phi_P2(x,3, xi).*phi_P2(x,3, xi),xi(1),xi(3));
elemGi=gamma*[A B C;D E F;G H K];
elemi=elemKi+elemMi+elemGi;

%elemKi=(alpha/(x2-x1))*[1  -1;-1   1];

end