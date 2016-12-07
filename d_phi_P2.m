function  y = d_phi_P2(x,t,xi)
%calcule la fonction de forme phi1 
%h=xi(3)-xi(1);
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
% ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[0;0;1];
% 
%     y = polyval(polyder(ab),(xi(3)-xi(1))/2*x+xi(2));
 if t==1
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[1;0;0];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
   ab=polyder(ab);
   y =ab(1)*x+ab(2) ;
end
if t==2
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[0;1;0];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
    ab=polyder(ab);
   y =ab(1)*x+ab(2) ;
end
if t==3
% phi1(x)=a*x^2+bx+c et ab=[a;b;c]
ab=[xi(1)^2 xi(1) 1;xi(2)^2 xi(2) 1;xi(3)^2 xi(3) 1]\[0;0;1];
   % y = polyval(ab,((xi(3)-xi(1))/2)*x+xi(2));
    ab=polyder(ab);
   y =ab(1)*x+ab(2) ;  
end
end