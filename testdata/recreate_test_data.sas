libname lib ".";

data lib.classx (label = "Created from `sashelp.class`");
 format ssid;
 set sashelp.class;
 ssid = _n_;
 label ssid = "Subject id";
run;

data lib.classx_long (label = "Data with multiple rows/events per subject");
  set lib.classx (keep = ssid age);
  
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
  drop age
run;
