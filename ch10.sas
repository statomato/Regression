DATA data1;
INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B1.txt';
 INPUT y x1-x9;
RUN;

PROC REG DATA=data1;
 MODEL y = x1-x9 / SELECTION=forward;
RUN;

PROC REG DATA=data1;
 MODEL y = x1-x9 / SELECTION=backward;
RUN;

PROC REG DATA=data1;
 MODEL y = x1-x9 / SELECTION=stepwise;
RUN;

PROC REG DATA = data1 PLOTS(LABEL) = CRITERIA;
MODEL y = x1 x2 x4 x7 x8 x9 / SELECTION=RSQUARE CP MSE;
RUN;

DATA data3;
INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B3.txt';
 INPUT y x1-x11;
RUN;

PROC REG DATA = data3 PLOTS(LABEL) = CRITERIA;
MODEL y = x1-x11 / SELECTION=RSQUARE CP MSE;
RUN;

PROC REG DATA=data3;
 MODEL y = x1-x11 / SELECTION=stepwise;
RUN;

DATA data15;
INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B15.txt';
 INPUT mort precip educ nonwhite nox so2;
RUN;

PROC REG DATA = data15 PLOTS(LABEL) = CRITERIA;
MODEL mort = precip educ nonwhite nox so2 / SELECTION= CP MSE;
RUN;

PROC REG DATA=data15;
 MODEL mort = precip educ nonwhite nox so2 / SELECTION=stepwise;
RUN;

DATA data14;
INFILE 'C:/Users/LEEEUNJIN/Desktop/2018-1/대학원/회귀분석1/B14.txt';
 INPUT x1-x5 y;
RUN;

PROC REG DATA = data14 PLOTS(LABEL) = CRITERIA;
MODEL y = x1-x5 / SELECTION=RSQUARE CP MSE;
RUN;

PROC REG DATA=data14;
 MODEL y = x1-x4 / CLM CLI;
RUN;

PROC REG DATA=data14;
 MODEL y = x1-x5 / CLM CLI;
RUN;
