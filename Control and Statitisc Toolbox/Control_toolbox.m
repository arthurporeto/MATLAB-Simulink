clear;clc;
%Space state model
A=[0,1;2,3];
B=[0;1];
C=eye(2);
D=0;

%Desired poles
p=[-3,-5];

%Pole placement method
K=place(A,B,p); %u=-Kx

%Euler Method
delta_t = 0.001;
tf=2;
t = 0:delta_t:tf;
x = zeros(2,length(t));
x(:,1) = [1;-3];
u = zeros(1,length(t));
for i=1:length(t)-1
    u(:,i)=-K*x(:,i);
    x(:,i+1) = x(:,i)+delta_t*(A*x(:,i)+B*u(:,i));
end

figure(1);clf;
plot(t,x(1,:),'r')
hold on
plot(t,x(2,:),'b')
plot(t,u,'g')
legend('$x$','$\dot{x}$','Control responses','Interpreter','Latex')
title('States and control responses against time') 
xlabel('t[s]')

%Pzmap
sys = ss(A,B,C,D);
figure(2);clf;
pzmap((A - B*K), B, C, D); sgrid;
grid on;