# SAS macros


Use the following syntax to directly access macros defined in `SASutils` repo :

```
/* Path to `SASutils` repo */
%let url_path = https://raw.githubusercontent.com/agalecki-work/SASutils/master;

/* load macros from this folder */
filename mcrs_url  URL "&url_path/macros/_load_macros.sas";
%include mcrs_url;   /* Loading macros directly from `SASutils` repo */

```

