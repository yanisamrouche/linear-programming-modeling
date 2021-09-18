set R;
set M;

param mill{m in M} ;
param corn{c in R};

param distances{r in R, m in M};
param x{R, M} >=0;



minimize total_cost: 0.1*(sum{i in 1..3 , j in 1..3} distances[i,j]*x[i,j]);

R1: sum{i in 1..3} x[i,1] >= mill[1];
R2: sum{i in 1..3} x[i,2] >= mill[2];
R3: sum{i in 1..3} x[i,3] >= mill[3];
R4: sum{j in 1..3} x[1,j] <= corn[1];
R5: sum{j in 1..3} x[2,j] <= corn[2];
R6: sum{j in 1..3} x[3,j] <= corn[3];


solve;
display total_cost;


data;

set R := R1 R2 R3;
set M := M1 M2 M3;

param mill :=
    M1      200
    M2      550
    M3      225 ;

param corn  := 
    R1      275
    R2      400
    R3      300 ;

param distances: M1    M2    M3 :=
R1               210   500   400
R2               350   300   220
R3               550   200   250 ;
end;