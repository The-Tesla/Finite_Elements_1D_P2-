function [X, T] = MaillageP2(a, b, h)

%----------------------------
%Génére un maillage de type P1
% X la table des coordonnées
% T la table de connectivité moyennant les indices
%----------------------------
n = 2*floor((b - a)/h) + 1;
X = a + h/2*(0:n-1)';
if mod(size(X,1),2)==0
    n=n-1;
end
%     if mod(size(X,1),3)==2
%         n=n-2;
%     end
X = a + h/2*(0:n-1)';
[~, I] = sort(X);
%disp(I);%disp(sort(X));
T = [ I(1:2:n-2),I(3:2:n)];

%Partie affichage
%
figure('name', sprintf('Representation du Maillage ( n = %d )', n) );
plot(X, zeros(1,n), 'b-o');
for i = 1:size(X,1)
    text(X(i), 0.1, sprintf('X_{%d}', i), 'color', 'blue');
end

for i = 1:size(T,1)
    text(X(T(i,1)) + 2*(X(T(i,2))-X(T(i,1)))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
end