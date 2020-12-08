# SAS macros
`%let url_path=https://raw.githubusercontent.com/agalecki-work/SASutils/master;

```
/* load macros from this folder */
filename loadm  URL "&url_path/macros/_load_macros.sas";
%include loadm;
```
