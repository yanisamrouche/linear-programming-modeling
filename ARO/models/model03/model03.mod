var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;

minimize obj: +9*x1 +21*x2 +25*x3 +16*x4 +30*x5 +12*x6;

R1: +9*x1 +21*x2 >= 21;
R2: +21*x2 +25*x3 >= 25;
R3: +25*x3 +16*x4 >= 16;
R4: +16*x4 +30*x5 >= 30;
R5: +30*x5 +12*x6 >= 12;
R6: +12*x6 +9*x1 >= 9;

solve;
display x1, x2, x3, x4, x5, x6, obj;