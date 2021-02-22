options nocenter;

/*-- Four mwthods of scoring of a <validation> dataset using results from a logistic regresion model fit */ 

/* ---https://www.listendata.com/2015/05/two-ways-to-score-validation-data-in.html */

/* Create training dataset */
data training;
  set sashelp.Bmt;
  id =_n_;
run;

proc contents data= training position;
run;

data validation;
  set sashelp.bmt;
  if mod(_n_,10) =1;
run;


/* create score data */

filename ff "20score_logistic.code";
proc logistic data=training outmodel= outm1;
   class Group;
   model Status=Group / lackfit ctable pprob =0.5;
   code file=ff;
   score data = validation out = score3; 
   store sasuser.store4;   /* item store */
run;


proc logistic inmodel=outm1;
score data=validation out=score1;
run; 

data Score2; 
   set validation;
   %include ff;
run;


proc plm restore=sasuser.store4;
   score data=validation out=score4 predicted lclm uclm/ ilink;
run;

title "score1 using `outmodel`";
proc print data =score1;
run;

title "score2 using `code` statement";
proc print data = score2;
run;

title "score3 using `score` statement";
proc print data = score3;
run;

title "score4 using `store` statement";
proc print data = score4;
run;

