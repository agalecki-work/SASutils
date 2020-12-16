options mprint;

%let project_path = .;

/* Datasets `classx` and `classx_long` are available  for testing */
libname testdata "&project_path/testdata";

libname metadata "&project_path/metadata";


/* load macros */
filename fm "&project_path/macros/_load_macros.sas";
%include fm;


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

