DATA prob2;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B1.txt';
 INPUT y x1-x9;
RUN;

PROC REG DATA=prob2;
 MODEL  y = x2 x7 x8/R partial INFLUENCE; 
RUN; QUIT;

DATA prob4;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B3.txt';
 INPUT y x1-x11;
RUN;

PROC REG DATA=prob4;
 MODEL  y = x1 x6/R partial INFLUENCE; 
RUN; QUIT;

DATA prob5;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B4.txt';
 INPUT y x1-x19;
RUN;

PROC REG DATA=prob5;
 MODEL  y = x1-x9/R partial INFLUENCE; 
RUN; QUIT;

DATA prob19;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/prob4.19.txt';
 INPUT x1 x2 x3 y;
RUN;

PROC REG DATA=prob19;
 MODEL  y = x1-x3/R partial lackfit; 
RUN; QUIT;

DATA prob20;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/prob4.20.txt';
 INPUT x1-x5 y;
RUN;

PROC REG DATA=prob20;
 MODEL  y = x1-x5/R partial lackfit; 
RUN; QUIT;
