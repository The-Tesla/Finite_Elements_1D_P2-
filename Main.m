%% pour validation

%clear
%clc
% ues=strcat('@(x)',ues);
% ue=str2func(ues);
% fu=strcat('@(x)',fu);
% f=str2func(fu);
a=0;
b=pi;
h=0.01;
alpha=0;
beta=0;
gamma=1;
ue=@(x)sin(x);
f=@(x)cos(x);
[X,T] = MaillageP2(a, b, h);
uex=ue(X);% exact points
[U] = EF_P2(-alpha,beta,gamma,f,X,T);
%n = floor((b - a)/h) + 1;
% Post-traitement
%%%%%%   comparaison graphique
figure('name', 'Comparaision: solutions exacte et approchée '); 
fplot(ue, [min(X), max(X)+h], 'b'); hold on; plot([X;max(X)+h],U, 'r.-');
%%%%%%   Analyse d'erreur
 erreur=zeros(size(X,1)+1,1);
for i=1:size(X,1)
 erreur(i)=U(i)-ue(X(i));
end
 figure('name', 'analyse erreur'); 
 plot([X;max(X)+h],erreur, 'r-o');
 ylabel('erreur');
 xlabel('noeuds');
