%let tmp = &url_path;


/* -- driver.sas ---*/
filename ff URL "&tmp/macros/driver.sas";
%include ff;

/* Clean-up */
%symdel tmp;
