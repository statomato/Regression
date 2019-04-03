DATA p3_1;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/p3.1.txt';
 INPUT y x1 x2 x3 x4 x5 x6 x7 x8 x9;
RUN;

PROC REG DATA=p3_1;
 MODEL  y = x2 x7 x8/CLB ; 
RUN; QUIT;

PROC REG DATA=p3_1;
 MODEL  y = x2  x8; 
RUN; QUIT;

DATA p3_1_1;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/p3.1.1.txt';
 INPUT y x1 x2 x3 x4 x5 x6 x7 x8 x9;
RUN;

PROC REG DATA=p3_1_1;
 MODEL  y = x2  x7 x8/CLM CLI; 
RUN; QUIT;

PROC REG DATA=p3_1;
 MODEL  y = x7 x8/CLB; 
RUN; QUIT;

PROC REG DATA=p3_1_1;
 MODEL  y = x7 x8/CLM CLI; 
RUN; QUIT;

DATA p3_7;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/p3.7.txt';
 INPUT y x1 x2 x3 x4 x5 x6 x7 x8 x9;
RUN;

PROC REG DATA=p3_7;
 MODEL  y = x1 x2 x3 x4 x5 x6 x7 x8 x9/SS1 SS2 VIF COLLINOINT; 
RUN; QUIT;

PROC REG DATA=p3_7;
 MODEL  y = x1 x2 x5 x6 x7 x8 x9; 
RUN; QUIT;

DATA p3_19;
 INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/p3.19.txt';
 INPUT y x1 x2 x3 x4 x5 x6 x7 x8 x9 x10;
RUN;

PROC REG DATA=p3_19;
 MODEL  y = x2 x3 x4 x5 x6 x7 x8 x9 x10; 
RUN; QUIT;

PROC REG DATA=p3_19;
 MODEL  y = x1 x2 x3 x4 x5 x6 x7 x8 x9 x10/VIF; 
RUN; QUIT;


PROC REG DATA=p3_19;
 MODEL  y = x1 x2 x3  x6 x8 x9/VIF; 
RUN; QUIT;
