clear all
close all
clc

f = 900e6;
c = 3e8;
lamb = c/f;



Gt = 1;
Gr = 1;

Pt = 50;

d = [0:1:100e3];
L = 1;

Pr = (Pt*Gt*Gr*(lamb^2))./(((4*3.14)^2).*(d.^2)*L);


Prdbm =  10*log10(Pr/0.01);

semilogx(d,Prdbm);