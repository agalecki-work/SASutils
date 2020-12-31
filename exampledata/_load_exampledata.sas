%let tmp = &project_path/exampledata;

/* follic0 */
filename _f  "&tmp/follic0.sas";
%include _f;



/* nickel */
filename _f  "&tmp/nickel.sas";
%include _f;


/* nickel20 */
filename _f  "&tmp/nickel20.sas";
%include _f;


/*--- Clean-up */
%symdel tmp;
