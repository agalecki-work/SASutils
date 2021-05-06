# SAS macros


Use the following syntax to directly access macros defined in `SASutils` repo :

```
/* Path to `SASutils` repo */
%let url_path = https://raw.githack.com/agalecki-work/SASutils/master;

/* Load macros stored at this URL */
filename mcrs_url  URL "&url_path/macros/_load_URL_macros.sas";
%include mcrs_url;  

```

