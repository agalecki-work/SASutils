data means_tmplt;
   label
      newvar1 = 'Label for new variable 1'
      newvar2 = 'Label for new variable 2'
      /* ... */
      newvarN = 'Label for new variable N'
      ;
  length
      newvar1 newvar2 $40
      newvarN 8
      ;
   format newvarN mmddyy10.;
   informat newvarN date9.;
   call missing(of _all_);
   stop;
run;