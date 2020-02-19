clc
clear all
close all

d0 = 100;
d = [100 200 1000 3000];
P = [0 -20 -35 -70];
P0 = 0;

syms n;
syms E; 

E = P0 - 10*n*log10(d/d0);

Jaux = (P - E).^2;

J = sum(Jaux);

Jdiff = diff(J);

S = solve(Jdiff,n);

Seval = eval(S);