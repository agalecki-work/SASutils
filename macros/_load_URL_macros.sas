%let tmp = &url_path/macros;

/* create_our_vdata.sas */
filename _f URL "&tmp/create_our_vdata.sas";
%include _f;

/* -- driver.sas ---*/
filename _f URL "&tmp/driver.sas";
%include _f;

/* Clean-up */
%symdel tmp;
