close all
clear; clc; clf

minC=-50;
maxC=100;
dC=10;
r=mod(150,dC);
n=(150-r)/dC;
Np=n+2;

C=zeros(1,Np);
for i=1,Np-1;
    C(i)=-50+(i-1)*dC;
end
C(Np)=100;

K=C+273.15;
F=C*1.8+32;
R=1.8*K;

plot(C,C,'k','LineWidth',1.5); 
hold on
plot(C,K,'r','LineWidth',1.5);
hold on
plot(C,F,'b','LineWidth',1.5);
hold on
plot(C,R,'g','LineWidth',1.5);
hold on
set(gca,'fontsize', 16)
legend('C','K','F','R','Location','Best')
xlabel('Degree Celsius')
ylabel('Degree Various')