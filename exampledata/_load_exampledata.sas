%let tmp = &project_path/exampledata;

/* nickel */
filename _f  "&tmp/nickel.sas";
%include _f;


/* nickel20 */
filename _f  "&tmp/nickel20.sas";
%include _f;


/*--- Clean-up */
%symdel tmp;
