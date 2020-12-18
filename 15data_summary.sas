options mprint;

%let project_path = .;

/* Datasets `classx` and `classx_long` are available  for testing */
libname testdata "&project_path/testdata";

/* Metadata */
libname metadata "&project_path/metadata";


/* data with results */
libname outdata "&project_path/outdata";

/* load macros */
filename fm "&project_path/macros/_load_macros.sas";
%include fm;

/* Print metadata */
Title "List of datasets in `testdata` library";
proc print data = metadata.lib_vtable;
run;

Title "List of variables in datasets stored in `testdata` library";
proc print data = metadata.lib_vcolumn;
run;


/*--- Ex.1: Descriptive statistics for datasets in `testdata` library ---*/

/* STEP 1: Initialize dataset for appending */
/* https://blogs.sas.com/content/sgf/2019/01/09/simplify-data-preparation-using-sas-data-templates/ */

data means_summary;
   label
     memname  = "Dataset name"
     Variable = "Variable name"
     name     = "Variable name (for merging)"
     Label    = "Variable label"
     N        = "N" 
     NMiss    = "N Miss"   
     Mean     = "Mean"
     StdDev   = "Std Dev"  
     Min      = "Minimum"  
     P25      = "25th Pctl"
     P50      = "50th Pctl"
     P75      = "75th Pctl"
     Max      = "Maximum";
  length
      memname  $32
      Variable $32
      name     $32
      Label    $255
      ;
  format                   
     N  
     NMiss BEST2.;
  format
     Mean    
     StdDev  
     Min     
     P25     
     P50     
     P75     
     Max D12.3 
   ; 
   * informat varname date9.;
   call missing(of _all_);
   stop;
run;  /* `means_summary` dataset created */

%macro means_dt;
/* Auxiliary user defined macro without parameters invoked by `driver` macro */
/* This macro is executed once for every row of data specified in `drive_dt` argument */ 
/* Macro variables are populated with a value of a corresponding variable in `drive_dt`  */

Title "PROC MEANS results for `&memname` data";
proc means data= testdata.&memname stackods 
               n nmiss mean stddev min p25 p50 p75 max;
var _numeric_;
ods output summary = out;
run;
quit;

data out1;
  label memname = "Dataset name";
  set out;
  length memname $32;
  memname = "&memname";
  name    = upcase (variable); /* for merging */
run;

proc append base = means_summary
            data = out1 force;
run;
quit;
%mend means_dt;

/* For every row of `drive_dt` dataset user defined macro `use_mac` is executed */
%driver(drive_dt = metadata.lib_vtable,  /* Meta data */
        vars = memname,                  /*  List of selected variable names in meta data */
        use_mac = means_dt               /* Name of a user defined macro (see above)*/
);
ods listing close;

ods html file = "&project_path/15data_summary.html";
Title "Data `means_summary` ";
proc print data= means_summary;
run;

/* Merge data */

proc sort data = metadata.lib_vcolumn
          out  = lib_vcolumn;
by memname name;         
run;

proc sort data = means_summary;
by memname name;        
run;

data var_info;
  merge lib_vcolumn
        means_summary;
  by memname name;
run;

proc sort data=var_info;
 by memname varnum;
run;

Title "Data `var_info` ";
proc print data= var_info;
run;


/* Move  datasets */
proc datasets nolist;
   copy in=work out=outdata memtype=data move;
   select means_summary var_info;
run;quit;
