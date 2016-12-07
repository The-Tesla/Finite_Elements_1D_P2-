function  y = phi_P2(x,t,xi)

%calcule la fonction de forme phi
% x function parameter
% t index of phi 
% xi elementary vector
if t==1
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[1;0;0];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
   y =ab(1)*x.^2+ab(2)*x+ab(3) ;
end
if t==2
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[0;1;0];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
   y =ab(1)*x.^2+ab(2)*x+ab(3) ;
end
if t==3
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[0;0;1];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
   y =ab(1)*x.^2+ab(2)*x+ab(3) ;
end
end
