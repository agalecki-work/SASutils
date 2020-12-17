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


proc means data= testdata.classx
               n nmiss mean stdev min p25 p50 p75 max;
output out =out;
run;
quit;

proc print data= out;
run;
endsas;

  



%lib_vtable(libname = testdata);
%lib_vcolumn(libname = testdata);

Title "List of datasets";
proc print data = lib_vtable;
run;

Title "List of variables";
proc print data = lib_vcolumn;
run;

/* Move  datasets */
proc datasets nolist;
   copy in=work out=metadata memtype=data move;
run;quit;
