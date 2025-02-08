H = [1,-2;-2,4];
f = [-3;5];
A = [1,3;-2,7;1,2];
b = [5;9;4];
Aeq = [];
beq = [];
lb = [0;0];
ub = [];

[x,fval] = quadprog(H,f,A,b,Aeq,beq,lb,ub)