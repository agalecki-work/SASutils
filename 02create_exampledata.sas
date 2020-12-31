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




/* Move datasets */
proc datasets nolist;
   copy in=work out=exmpldat memtype=data move;
run;quit;

