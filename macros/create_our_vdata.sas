
%macro our_vlibnam /des ="SAS libraries stored in `_vlibnam` dataset";

data _vlibnam (label = "List of SAS libraries");
  set sashelp.VLIBNAM (keep =libname path);
  if libname in ("SASHELP","MAPS","MAPSSAS", "MAPSGFK", "SASUSER") then delete;
  run;
proc sort data=_vlibnam nodupkey;
by libname;
run;

%mend our_vlibnam;

%macro our_vextfl /des ="SAS filerefs stored in `_vextfl` dataset";

data _vextfl (label = "List of SAS filerefs");
  set sashelp.VEXTFL;
  if (substr(fileref,1,1) eq "#" and directory ="yes") then delete;
  run;
/*
proc sort data=_vextfl nodupkey;
by libname;
run;
*/

%mend our_vextfl;

%macro our_vtable /des = "SAS datasets stored in `_vtable` dataset";
%put * List of datasets stored in: _vtable dataset;
data _vtable (label = "List of SAS datasets") ;
  set sashelp.vtable(keep=libname memname memlabel typemem nobs nvar crdate) ;
  if libname in ("SASHELP", "MAPS","MAPSSAS","MAPSGFK") then delete;
run;

%mend our_vtable;

%macro our_vcolumn /des = "Variable names stored in `_vcolumn` dataset";
%put * List of variables stored in: _vcolumn dataset;
data _vcolumn (label = "List of variables") ;
  set sashelp.vcolumn (keep = libname memname memtype name type length npos varnum label format informat) ;
  if libname in ("SASHELP", "MAPS","MAPSSAS","MAPSGFK") then delete;
  name = upcase(name);
run;

%mend our_vcolumn;


%macro our_vmacro / des = "Macro variables and their values" ;
/* Global variable names defined */

%put * List of macro variables and their values;
data _vmacro (label = "macro variables and their values");
 set sashelp.vmacro;
 value = substr(value, 1, 125);
 if scope = "AUTOMATIC" then delete; 
 * if value > "";
run;

%mend our_vmacro;

%macro our_vcatalg;
Title "List of user defined catalogs with macros and formats";
data _vcatalg;
  set sashelp.vcatalg (keep = libname objname  memname objdesc created);
  if libname in ('SASHELP', 'MAPS','MAPSSAS','SASUSER') then delete;
run;

%mend our_vcatalg;


%macro create_our_vdata; 

/* Data: `_vlibnam`,`_vcolumn`, `_vextfl`, `_vcolumn`, `_vmacro`, `_vcatalg`,`_vtable` */
%our_vlibnam; /* Dataset `_vlibnam` created. Contains SAS library names */
%our_vextfl;  /* Dataset `_vextfl` created. Contains SAS filerefs */

%our_vcolumn; /* Dataset `_vcolumn` created. Contains SAS  variable names */
%our_vmacro;  /* Dataset `_vmacro` created. Contains macro variables and their values */
%our_vcatalg; /* Dataset `_vcatalg` created. Contains SAS  catalog names */

%our_vtable;  /* Dataset `_vtable` created. Contains SAS  dataset names */
%mend create_our_vdata;

