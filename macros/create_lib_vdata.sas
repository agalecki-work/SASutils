
%macro lib_vtable(libname = WORK,
                  keep  = libname memname memlabel typemem nobs nvar crdate,
                  out = lib_vtable 
) /des = "List of SAS datasets stored in `lib_vtable` dataset";
%put * List of datasets in a SAS library stored in: lib_vtable dataset;
%let libname = %upcase(&libname);
data &out (label = "List of SAS datasets in &libname library") ;
  set sashelp.vtable(keep=&keep 
   where = (upcase(libname)  = "&libname"));
run;

%mend lib_vtable;

%macro lib_vcolumn (libname = WORK,
                    keep = libname memname memtype name type length npos varnum label format informat,
                    out = lib_vcolumn
) /des = "List of variable names stored in `lib_vcolumn` dataset";
%put * List of variables stored in: _vcolumn dataset;
%let libname = %upcase(&libname);
data &out (label = "List of variables for members in &libname library") ;
  set sashelp.vcolumn (keep = &keep
                       where = (upcase(libname)  = "&libname"));
  name = upcase(name);
run;

%mend lib_vcolumn;

