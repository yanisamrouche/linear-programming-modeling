var I == 4000;
var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;

minimize obj: +0.5*x1 +0.6*x2 +0.64*x3 +0.3*x4;

R1: +x1 +x2 +x3 +x4 == I;
R2: 0.3*x1 +0.05*x2 +0.2*x3 +0.1*x4 >= 0.2*I;
R3: 0.1*x1 +0.3*x2 +0.15*x3 +0.1*x4 >= 0.15*I;
R4: 0.2*x1 +0.15*x2 +0.2*x3 +0.3*x4 >= 0.25*I;
solve;
display obj;