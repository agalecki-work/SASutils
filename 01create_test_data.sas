
/* Datasets `classx` and `classx_long` are created for testing */
libname testdata "./testdata";

data classx (label = "Created from `sashelp.class`");
 format ssid;
 set sashelp.class;
 ssid = _n_;
 label ssid = "Subject id";

 weight_kg = weight*0.454;
run;

/* For illustration extended attribute for `weight` variable is created */
/* https://support.sas.com/resources/papers/proceedings13/135-2013.pdf*/
/* https://blogs.sas.com/content/sasdummy/2013/10/17/extended-attributes-sas-94/ */

proc datasets lib = work;
 modify classx;
   xattr add var weight_kg (formula = "weight_kg = weight*0.454");
 run;
quit;

data classx_long (label = "Data with multiple rows/events per subject");
  set classx (keep = ssid age);
  
  length event_no 3;
  length event_name $20;
  
  do event_no=1 to 2;
  
  select(event_no);
   when (1) event_name = "Current age"; 
   when (2) event_name = "Next year age"; 
  end;
  
  age_long = age + event_no -1;
  label age_long = "Age at a given event";
  output;
  
  end;
  drop age;
run;

/* Move  all datasets */
proc datasets nolist;
   copy in=work out=testdata memtype=data move;
run;quit;
