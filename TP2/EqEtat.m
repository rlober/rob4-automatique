%Fichier :  EqEtat.m
function[sys,Xinit,str,ts]=EqEtat(t,X,u,FLAG,mu1,mu2,mu3,mug,X0)

switch(FLAG)
    
    case 0
        dimensions=simsizes;
        dimensions.NumContStates=4;
        dimensions.NumOutputs=4;
        dimensions.NumInputs=1;
        dimensions.NumSampleTimes=1;
        sys=simsizes(dimensions);
        
        Xinit=X0;
        str=[];
        ts=[0,0];
        
        
    case 1
        sys(1,1)=X(3,1);
        sys(2,1)=X(4,1);
        Num3=mu3*(mu2*(X(4,1))^2-mug*cos(X(2,1)))*sin(X(2,1))+...
            (mu2+mu3*cos(X(2,1)))*u;
        Den3=mu1*mu2-mu3^2*(cos(X(2,1)))^2;
        sys(3,1)=Num3/Den3;
        Num4=(mu1*mug-mu3^2*(X(4,1))^2*cos(X(2,1)))*sin(X(2,1))-...
            (mu1+mu3*cos(X(2,1)))*u;
        Den4=Den3;
        sys(4,1)=Num4/Den4;
        
        
    case 3
        sys=X;
        
end;
