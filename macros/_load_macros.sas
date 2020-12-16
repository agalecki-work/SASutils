%let tmp = &project_path/macros;

/* create_lib_vdata.sas */
filename _f  "&tmp/create_lib_vdata.sas";
%include _f;

/* -- driver.sas ---*/
filename _f  "&tmp/driver.sas";
%include _f;

/* Clean-up */
%symdel tmp;
