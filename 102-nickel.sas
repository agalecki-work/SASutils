options mprint nocenter;

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

/* Move dataset */
proc datasets nolist;
   copy in=exmpldat out=work memtype=data move;
   select nickel;
run;quit;

Title "PROC means";
proc means data=nickel;
run;

proc freq  data=nickel;
tables subcohort nasal;
tables subcohort*nasal;
run;


 /*
   Barlow (1994) has considered weights that reflect the
   subcohort membership. Controls in the subcohort are weighted
   inversely proportional to the sampling fraction. For a cohort
   of 10%, the weight is 10.  Cases have a weight of 1 at the
   instant the individual fails regardless of subcohort member-
   ship. Cases inside the subcohort are controls until they
   become a case, and at such instant the weight changes. The
   analysis requires a staggered entry into the cohort since
   the workers started their employment at different times.
   Although PROC PHREG allows a staggered entry with the use of
   the counting process style of input, with all the given
   restrictions, it is simplier to construct the risk sets
   explicity rather than tricking PROC PHREG into forming
   appropriate risk sets.

   The following SAS statements expand the data set NICKEL
   to include explicitly risk sets for the event times (save
   in the data set ONE). The new data set contains three
   additional variables:

      Strat   (stratifying variable representing distinct
               case-control sets)
      T       (articifical time variable: 1=case, 2=control)
      Wt      (weight of the observations)
 */

proc sort data=nickel;
   by AgeStop;
run;

data one; * (drop=EvntTime);
   retain Strat 0;
   set Nickel;
   if Nasal=1 then do;
      Strat + 1;
      EvntTime= AgeStop;
      t=1;
      Wt=1;
      output;
      do i=_n_+1 to n;
         set Nickel point=i nobs=n;
         aux1 = AgeStart lt EvntTime le AgeStop;
         if Subcohort=1 and (aux1)
         then do;
            T=2;
            Wt=10;  /* 10% subcohort */
            output;
         end;
      end;
   end;
run;

Title "DATA one";
proc means data=one min max;
var strat wt t aux1;
run;

data nickel_tmp;
  set nickel;
  if _n_ <= 20;
run;

data one_tmp;
  set one;
  if _n_ <= 138;
run;

Title "nickel_tmp";
proc print data=nickel_tmp;
run;

Title "one_tmp";
Proc print data=one_tmp;
run;

 /*
   In the following SAS statements, PROC PHREG is invoked to fit
   the case-cohort model with Yr_Emp and Exposure as the
   explanatory variables. Strat is used as a stratifying variable,
   T is the failure time variable, and the control observations
   (T=2) are regarded as censored. Wt is used as the  WEIGHT variable.
 */

proc phreg data=one covs(aggregate);
   model T*T(2)=Yr_Emp Exposure;
   weight Wt;
   strata Strat;
   id Id;
run;
