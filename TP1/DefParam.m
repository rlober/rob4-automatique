
%clear all
%% TP1 Rob 5 Espace d'état 
%Définition des paramètres

%Acceleration de la pesanteur
g=9.81; %en m.s-2

%Masse du drone
M= 1; %en kg

%Inertie de l'hélice
Ih= 0.00025; %en kg.m2

%Gain du moteur
Kc=185; %en A.N-1.m-1

%Coefficients aérodynamiques
kh=0.0026;
k1=3.3568e-007;
k2=4.95e-005;

%Matrice de sortie
C=[1,0,0];

%Equilibre
Ie=sqrt(k1*M*g*Kc^2/(kh-k1*k2*M*g*Kc^2));
Re=sqrt(M*g*Kc/(kh*Ie));
Vze=0;
Ze=0;


%Etat initial
Z0=0;
Vz0=0;
R0=Re;




