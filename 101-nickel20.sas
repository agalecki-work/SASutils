options mprint;

%let project_path = .;

/* Datasets `classx` and `classx_long` are available  for testing */
* libname testdata "&project_path/testdata";

/* Metadata */
* libname metadata "&project_path/metadata";

/* Example data  */
libname exmpldat   "&project_path/exampledata";

/* load macros */
filename fm "&project_path/macros/_load_macros.sas";
%include fm;

/* Load example data */
filename fm "&project_path/exampledata/_load_exampledata.sas";
%include fm;

/*
===================================================================
  Name: CASECOH.SAS (Survival Analysis with Robust Variance Matrix)
  Version: 1.0.2
  Authors: Laura Ichikawa and William Barlow
           Center for Health Studies, Group Health Cooperative 
           Seattle, WA
  Origin date: January 1996
  Revision date(s): March 1998

*/

data nickel1; 
  set exmpldat.nickel20;  /* Standard Cox model counting process approach */
   if (nasal=1) then do; /* Cases */
           survtime=timestop;
           logwt=log(1);
           start=survtime -0.01; ***0.00005;
           output;
           if (subco20=1) then do;   /* Subcohort case treated as control */
                 logwt=log(5);  /* Weight for 20% subcohort=100/20 */
                 start=timestrt;
                 survtime=survtime-0.00005;
                 nasal=2;
                 output;
                 end;
           end;
     else if subco20=1 & nasal=2 then do; /* Subcohort controls */
           survtime=timestop;
           logwt=log(5);
           start=timestrt;
           output;
           end;
     run;

/* Note: risk set approach and SAS/IML OMITTED */ 
Title "Nickel 20 (subcohort or nasal =1";
data tmp1;
 set nickel20;
 if subco20 = 0 and nasal =2 then delete;
run;

proc print data = tmp1 (obs=10);
var id subco20 nasal timestrt timestop;
run;

Title "Nickel 1";
proc print data = nickel1(obs=12);
var id subco20 nasal timestrt timestop start survtime logwt ;
run;


/* In SAS Version 8.2 or higher can direcly get robust covariance matrix */
Title "unweighted method";
data wtmeth; set nickel1; off_def=0; run;
proc phreg data=wtmeth outest=est(drop=off_def _status_) covsandwich(aggregate);
   model (start,survtime)*nasal(2) = logafe yfe10 yfe100 logexp / ties=breslow offset=off_def;
   output out=out1 dfbeta= dfb1-dfb4 / order=data;
   * no strata statement;
   id id;
run;

Title "weighted denominator method";
proc phreg data=nickel1 outest=est(drop=logwt _status_) covsandwich(aggregate);
   model (start,survtime)*nasal(2) = logafe yfe10 yfe100 logexp / ties=breslow offset=logwt;
   output out=out1 dfbeta= dfb1-dfb4 / order=data;
   * no strata statement;
   id id;
run;

Title "random sample denominator method";
data randmeth; set nickel1; if subco20=1 then offset3=0; else offset3=-10; run;
proc phreg data=randmeth outest=est(drop=offset3 _status_) covsandwich(aggregate);
   model (start,survtime)*nasal(2) = logafe yfe10 yfe100 logexp / ties=breslow offset=offset3;
   output out=out1 dfbeta= dfb1-dfb4 / order=data;
   * no strata statement;
   id id;
run;
