/* https://github.com/scheike/update-code-for-jss-comp.risk/blob/master/follic.txt */

data folic0;
length path1 $4;
length resp $2;
length relsite rt ch $ 1;
infile cards delimiter= ',' missover dsd;
input age
      path1
      hgb
      ldh
      clinstg
      blktxcat
      relsite
      ch
      rt
      survtime
      stat
      dftime
      dfcens
      resp
      stnum;
cards;
56,NH04,140,,2,1,B,,Y,0.6981519507,1,0.2381930185,1,CR,1
36,NH02,130,,2,1,D,,Y,14.502395619,1,12.41889117,1,CR,2
39,NH02,140,,2,3,,Y,Y,4.9144421629,1,0.0027378508,1,NR,3
37,NH03,140,,1,1,,,Y,15.685147159,1,15.685147159,1,CR,4
61,NH04,110,,2,2,,,Y,0.2354551677,1,0.0027378508,1,NR,5
69,NH02,120,,1,1,,,Y,8.4188911704,1,8.4188911704,1,CR,6
57,NH04,110,,2,0,,,Y,25.149897331,1,25.149897331,1,CR,7
32,NH04,120,,2,0,,,Y,31.101984942,0,31.101984942,0,CR,8
24,NH03,110,,2,2,,,Y,14.57357974,0,14.57357974,0,CR,9
49,NH04,110,,2,3,B,,Y,22.663928816,1,0.8076659822,1,CR,10
44,NH04,130,,2,3,D,,Y,15.260780287,1,5.6153319644,1,CR,11
82,NH03,120,,1,3,,,Y,1.7248459959,1,0.0027378508,1,NR,12
58,NH04,130,,1,2,D,,Y,15.559206023,1,13.048596851,1,CR,13
32,NH04,140,,2,2,D,,Y,2.5626283368,1,0.1505817933,1,CR,14
51,NH04,140,,2,2,,,Y,29.667351129,1,29.667351129,1,CR,15
73,NH03,130,,2,2,D,,Y,3.3045859001,1,2.1930184805,1,CR,16
64,NH02,130,,1,1,D,,Y,1.9986310746,1,0.4052019165,1,CR,17
56,NH04,129,,1,2,D,,Y,11.613963039,1,11.184120465,1,CR,18
38,NH03,160,,2,2,,,Y,11.274469541,0,11.274469541,0,CR,19
68,NH02,160,,2,0,D,,Y,4.7364818617,1,4.0054757016,1,CR,20
55,NH04,160,,1,0,,,Y,6.9733059548,1,6.9733059548,1,CR,21
58.1,NH02,116,,2,3,D,,Y,2.4832306639,1,1.4373716632,1,CR,22
77,NH03,130,,2,2,D,,Y,3.7371663244,1,0.3312799452,1,CR,23
54,NH02,140,,2,0,,,Y,29.256673511,0,29.256673511,0,CR,24
75,NH04,140,,2,2,,,Y,8.3613963039,1,0.0027378508,1,NR,25
54,NH03,160,,1,2,D,,Y,6.4257357974,1,4.1478439425,1,CR,26
71,NH04,130,,1,2,,,Y,1.0075290897,1,0.0027378508,1,NR,27
77,NH04,130,,1,0,,,Y,5.6290212183,1,5.6290212183,1,CR,28
70,NH04,140,,1,1,D,,Y,5.2648870637,1,0.7118412047,1,CR,29
49,NH04,140,,2,2,D,,Y,13.629021218,1,13.333333333,1,CR,30
48,NH02,130,,1,0,,,Y,28.750171116,0,28.750171116,0,CR,31
31,NH04,110,,2,2,,,Y,28.610540726,0,28.610540726,0,CR,32
56,NH04,130,,1,0,,,Y,16.076659822,0,16.076659822,0,CR,33
49,NH04,130,,2,0,,,Y,11.731690623,1,11.731690623,1,CR,34
70,NH02,130,,2,2,,Y,Y,0.5557837098,1,0.0027378508,1,NR,35
42,NH04,140,,1,2,,,Y,28.331279945,0,28.331279945,0,CR,36
36,NH03,160,,1,2,,,Y,18.406570842,1,18.406570842,1,CR,37
58,NH04,150,,1,0,D,,Y,1.3360711841,1,1.1553730322,1,CR,38
59,NH04,120,,1,2,D,,Y,2.0506502396,1,1.6728268309,1,CR,39
66,NH04,130,,1,2,D,,Y,5.5523613963,1,1.5085557837,1,CR,40
44,NH04,130,,2,0,,Y,Y,0.4599589322,1,0.0027378508,1,NR,41
76,NH02,140,,2,2,,,Y,9.8042436687,1,0.0027378508,1,NR,42
69,NH03,140,,1,2,,,Y,6.5160848734,1,6.5160848734,1,CR,43
64,NH04,150,,2,3,D,,Y,1.2320328542,1,0.4052019165,1,CR,44
56,NH04,150,,1,2,D,,Y,20.917180014,1,0.4161533196,1,CR,45
64,NH04,140,,1,2,B,,Y,2.1875427789,1,1.2840520192,1,CR,46
32,NH04,150,,1,3,,,Y,16.479123888,0,16.479123888,0,CR,47
60,NH04,130,,1,3,D,,Y,4.7802874743,1,2.2861054073,1,CR,48
53,NH04,140,,1,0,,,Y,25.53045859,0,25.53045859,0,CR,49
22,NH02,140,,2,1,,,Y,27.34017796,0,27.34017796,0,CR,50
66,NH02,140,,2,2,D,,Y,4.4052019165,1,2.1273100616,1,CR,51
48,NH04,130,,1,3,D,,Y,1.2375085558,1,0.1998631075,1,CR,52
29,NH02,130,,2,1,,,Y,29.333333333,0,29.333333333,0,CR,53
49,NH02,150,,2,2,D,,Y,17.481177276,1,1.2977412731,1,CR,54
44,NH04,150,,2,3,B,,Y,0.6598220397,1,0.3668720055,1,CR,55
65,NH02,100,,2,3,,,Y,12.410677618,1,12.410677618,1,CR,56
59,NH04,145,,2,3,D,,Y,8.8843258042,1,1.5195071869,1,CR,57
46,NH03,160,,1,1,D,,Y,11.72347707,1,1.4811772758,1,CR,58
34,NH03,130,,2,2,D,,Y,22.346338125,0,3.1540041068,1,CR,59
55,NH04,140,,2,2,B,,Y,13.267624914,1,1.0704996578,1,CR,60
73,NH04,110,,1,3,,Y,Y,0.5941136208,1,0.0027378508,1,NR,61
56,NH04,120,,2,2,,,Y,14.458590007,0,14.458590007,0,CR,62
78,NH02,140,,2,2,D,,Y,0.5776865161,1,0.3915126626,1,CR,63
48,NH04,140,,2,2,,,Y,24.621492129,1,24.621492129,1,CR,64
63,NH04,150,,2,3,D,,Y,8.1232032854,1,0.2409308693,1,CR,65
57,NH02,150,,1,1,,,Y,10.064339493,1,10.064339493,1,CR,66
56,NH04,150,,2,2,,,Y,16.83504449,1,16.83504449,1,CR,67
38,NH04,130,,1,1,D,,Y,20.134154689,1,0.7091033539,1,CR,68
35.8,NH04,128,,2,0,B,,Y,23.764544832,1,0.4161533196,1,CR,69
72,NH04,130,,1,0,D,,Y,3.7645448323,1,1.4182067077,1,CR,70
62,NH04,130,,2,2,,,Y,14.926762491,1,14.926762491,1,CR,71
66,NH02,130,,1,1,,,Y,24.13963039,1,21.264887064,1,CR,72
52,NH04,130,,1,3,,,Y,26.64202601,0,26.64202601,0,CR,73
29,NH04,130,,1,3,D,,Y,2.4503764545,1,0.5694729637,1,CR,74
71,NH04,110,,2,2,,,Y,0.4325804244,1,0.0027378508,1,NR,75
62,NH04,120,,1,3,D,,Y,2.0479123888,1,0.1861738535,1,CR,76
56,NH02,140,,1,1,D,,Y,12.706365503,1,1.4483230664,1,CR,77
50,NH03,120,,1,1,D,,Y,26.453114305,0,1.3305954825,1,CR,78
35,NH03,140,,2,3,,Y,Y,24.629705681,0,24.629705681,0,CR,79
46,NH03,150,,2,2,D,,Y,18.354551677,1,9.2511978097,1,CR,80
62,NH04,150,,2,0,D,,Y,14.978781656,1,10.945927447,1,CR,81
63,NH04,130,,1,2,,,Y,25.01026694,1,25.01026694,1,CR,82
59,NH02,160,,2,2,D,Y,Y,7.6577686516,1,5.6235455168,1,CR,83
34,NH04,130,,1,0,,,Y,26.028747433,0,26.028747433,0,CR,84
53,NH04,150,,1,2,,,Y,6.045174538,1,6.045174538,1,CR,85
62,NH02,130,,1,0,,,Y,25.927446954,0,25.927446954,0,CR,86
60,NH03,150,,1,1,,,Y,11.663244353,1,11.663244353,1,CR,87
42,NH04,140,,2,0,,,Y,25.67008898,0,25.67008898,0,CR,88
27,NH02,140,,2,3,,,Y,17.84257358,1,17.84257358,1,CR,89
63,NH03,120,,2,2,D,,Y,6.9075975359,1,0.9199178645,1,CR,90
33,NH04,130,,2,0,,,Y,27.676933607,1,27.676933607,1,CR,91
56,NH02,130,,2,3,,Y,Y,24.739219713,1,24.739219713,1,CR,92
60,NH03,120,,2,0,D,,Y,21.837097878,1,6.1848049281,1,CR,93
33.9,NH03,124,10,1,2,D,,Y,23.586584531,1,2.6091718001,1,CR,94
78,NH02,150,,1,2,D,,Y,0.8678986995,1,0.4572210815,1,CR,95
65,NH02,140,,1,1,B,,Y,6.8227241615,1,0.733744011,1,CR,96
40,NH02,140,,2,2,D,Y,Y,5.3169062286,1,3.0581793292,1,CR,97
74,NH02,150,,1,1,D,,Y,6.4996577687,1,6.2231348392,1,CR,98
62,NH02,140,,1,1,D,,Y,6.8364134155,1,0.501026694,1,CR,99
77,NH03,140,,1,1,,,Y,3.6084873374,1,3.6084873374,1,CR,100
84,NH02,120,,1,2,,,Y,1.8809034908,1,1.8809034908,1,CR,101
47,NH02,124,,1,1,,,Y,23.879534565,0,23.879534565,0,CR,102
34,NH02,130,,2,1,,,Y,25.292265572,0,25.292265572,0,CR,103
25,NH04,130,,1,1,L,,Y,23.427789185,0,0.3641341547,1,CR,104
54,NH02,120,,1,0,L,,Y,4.4407939767,1,0.9418206708,1,CR,105
26,NH02,100,,2,3,,Y,Y,23.698836413,0,23.698836413,0,CR,106
32,NH03,140,,1,1,D,,Y,23.65229295,0,3.2251882272,1,CR,107
71,NH03,130,,1,0,D,,Y,16.692676249,1,3.4168377823,1,CR,108
59,NH02,132,,2,3,D,,Y,8.8952772074,1,5.1279945243,1,CR,109
39,NH03,130,,2,3,D,,Y,4.334017796,1,1.1854893908,1,CR,110
37,NH02,140,,1,1,D,,Y,23.594798084,0,23.392197125,1,CR,111
81,NH03,140,,1,0,D,,Y,9.18275154,1,2.1163586585,1,CR,112
86,NH02,130,,1,1,,Y,Y,1.4647501711,1,0.0027378508,1,NR,113
53,NH03,140,,2,2,,Y,Y,24.495550992,0,24.495550992,0,CR,114
68,NH04,130,,1,0,,,Y,11.82477755,1,11.82477755,1,CR,115
49,NH03,110,,1,0,D,,Y,1.9712525667,1,0.5393566051,1,CR,116
46,NH03,170,,2,3,,Y,Y,18.034223135,1,18.034223135,1,CR,117
72,NH03,110,,1,1,,,Y,15.370294319,1,15.370294319,1,CR,118
75,NH02,140,,1,2,B,,Y,1.5496235455,1,0.9883641342,1,CR,119
27,NH03,150,,1,0,,,Y,23.68788501,0,23.68788501,0,CR,120
63,NH03,140,,2,3,B,,Y,7.9206023272,1,3.537303217,1,CR,121
86,NH02,120,,1,2,D,,Y,3.0143737166,1,2.7707049966,1,CR,122
71,NH04,150,,1,1,D,,Y,4.7282683094,1,1.4154688569,1,CR,123
55,NH03,150,,2,3,D,,Y,14.652977413,1,10.850102669,1,CR,124
62,NH03,170,,1,0,D,,Y,9.2210814511,1,2.6310746064,1,CR,125
68,NH02,120,,1,2,,,Y,22.004106776,0,22.004106776,0,CR,126
39,NH02,150,,1,0,,,Y,21.894592745,0,21.894592745,0,CR,127
74,NH03,140,,2,2,D,,Y,2.6940451745,1,0.5585215606,1,CR,128
62,NH04,120,,1,3,,Y,Y,1.9219712526,1,0.0027378508,1,NR,129
58,NH02,130,,2,3,D,,Y,4.2628336756,1,3.0280629706,1,CR,130
29,NH02,150,,2,1,,,Y,12.251882272,0,12.251882272,0,CR,131
51,NH02,150,,1,0,D,,Y,18.502395619,1,7.0746064339,1,CR,132
55,NH02,160,,2,3,B,,Y,12.153319644,1,6.3627652293,1,CR,133
45,NH04,120,,2,2,,,Y,0.8405201916,1,0.0027378508,1,NR,134
42,NH02,120,,2,3,,,Y,22.951403149,0,22.951403149,0,CR,135
58,NH02,160,,1,0,,,Y,6.8446269678,1,6.8446269678,1,CR,136
64,NH02,150,,1,0,D,,Y,7.0882956879,1,0.8350444901,1,CR,137
46,NH02,110,,2,2,,,Y,23.06091718,0,23.06091718,0,CR,138
25,NH03,140,,1,1,,,Y,21.848049281,0,21.848049281,0,CR,139
69,NH04,130,,1,0,,,Y,2.1683778234,1,2.1683778234,1,CR,140
67,NH03,140,,1,0,D,,Y,16.5229295,1,2.3627652293,1,CR,141
50,NH02,120,,1,1,D,,Y,20.361396304,1,19.816563997,1,CR,142
44,NH02,120,,1,0,,,Y,20.755646817,0,20.755646817,0,CR,143
50,NH02,140,,1,0,D,,Y,22.436687201,0,5.4483230664,1,CR,144
67,NH04,40,,1,2,,,Y,2.1464750171,1,2.1464750171,1,CR,145
55,NH02,120,,2,3,B,Y,Y,18.26146475,1,2.3846680356,1,CR,146
44,NH02,170,,1,3,D,,Y,3.266255989,1,0.7008898015,1,CR,147
77,NH02,150,,1,1,D,,Y,6.7761806982,1,1.9630390144,1,CR,148
59,NH02,150,,1,0,,,Y,13.549623546,0,13.549623546,0,CR,149
31,NH04,140,,1,3,L,Y,Y,5.3853524983,1,3.4524298426,1,CR,150
52,NH03,140,,1,0,,,Y,20.678986995,0,20.678986995,0,CR,151
21,NH02,150,,1,3,,,Y,20.336755647,0,20.336755647,0,CR,152
55,NH02,130,,1,0,,,Y,20.720054757,0,20.720054757,0,CR,153
41,NH03,150,,1,0,,,Y,20.328542094,0,20.328542094,0,CR,154
64,NH02,150,,2,3,D,,Y,16.810403833,1,1.067761807,1,CR,155
47,NH02,150,,1,0,D,,Y,18.565366188,1,3.1375770021,1,CR,156
42,NH02,100,,2,2,D,,Y,16.257357974,1,2.1848049281,1,CR,157
78,NH02,130,,1,0,,,Y,12.468172485,1,12.468172485,1,CR,158
60,NH02,130,,1,0,,,Y,19.874058864,0,19.874058864,0,CR,159
77,NH04,130,,1,0,,,Y,13.360711841,1,10.532511978,1,CR,160
66,NH03,130,,1,0,D,,Y,14.518822724,1,10.617385352,1,CR,161
55,NH04,140,,2,3,,,Y,19.904175222,0,19.904175222,0,CR,162
50,NH02,150,,1,0,D,,Y,19.8275154,0,4.1396303901,1,CR,163
62.7,NH03,149,,1,1,D,,Y,12.287474333,1,1.9575633128,1,CR,164
53,NH03,150,,1,0,,,Y,7.3401779603,1,7.3401779603,1,CR,165
69,NH03,150,,1,2,D,,Y,1.2758384668,1,1.1937029432,1,CR,166
76,NH04,140,,2,3,,Y,Y,13.968514716,1,0.0027378508,1,NR,167
33,NH02,170,,1,0,,,Y,19.89596167,0,19.89596167,0,CR,168
51,NH02,160,,1,0,D,,Y,20.514715948,0,18.425735797,1,CR,169
66,NH03,150,,1,2,D,,Y,11.20054757,1,4.8569472964,1,CR,170
36,NH03,150,,1,0,D,,Y,9.9274469541,1,9.2210814511,1,CR,171
69,NH03,110,,2,3,,,Y,10.896646133,1,0.0027378508,1,NR,172
57,NH04,130,,1,3,,,Y,19.887748118,0,19.887748118,0,CR,173
49,NH04,130,,1,0,L,,Y,19.104722793,0,15.96440794,1,CR,174
68,NH04,100,,2,2,D,,Y,1.8069815195,1,0.3039014374,1,CR,175
41,NH04,110,,2,3,,Y,Y,19.575633128,0,19.575633128,0,CR,176
60,NH04,170,,1,0,,,Y,19.359342916,0,19.359342916,0,CR,177
59,NH04,130,,2,1,,Y,Y,9.749486653,0,9.749486653,0,CR,178
38,NH02,139,,1,1,D,Y,Y,4.3750855578,1,1.2895277207,1,CR,179
55,NH03,130,,1,2,,Y,Y,19.033538672,0,19.033538672,0,CR,180
85,NH04,120,,1,3,,,Y,9.0704996578,1,9.0704996578,1,CR,181
70,NH02,120,,1,0,D,,Y,14.674880219,1,10.951403149,1,CR,182
64,NH04,150,,1,0,,,Y,13.839835729,1,13.839835729,1,CR,183
45,NH03,140,,2,2,D,,Y,18.767967146,0,0.9445585216,1,CR,184
63,NH04,120,,2,0,,Y,Y,10.976043806,1,10.976043806,1,CR,185
56,NH04,150,,1,2,,,Y,19.274469541,1,19.274469541,1,CR,186
17,NH04,170,,1,2,D,,Y,20.509240246,0,0.4435318275,1,CR,187
59,NH03,160,,2,0,D,,Y,17.11156742,1,3.5400410678,1,CR,188
76,NH02,140,,1,2,,,Y,1.3032169747,1,1.3032169747,1,CR,189
63,NH04,130,,1,2,D,,Y,8.0547570157,1,7.6331279945,1,CR,190
46,NH04,120,,2,1,,,Y,19.868583162,0,19.868583162,0,CR,191
65,NH04,140,,1,0,D,,Y,6.4887063655,1,6.1683778234,1,CR,192
53,NH04,140,,2,3,D,,Y,3.0855578371,1,0.9089664613,1,CR,193
65,NH02,130,,1,0,,,Y,3.4688569473,1,3.4688569473,1,CR,194
40,NH03,120,,1,0,B,,Y,18.340862423,0,14.321697467,1,CR,195
67,NH02,130,,2,3,D,Y,Y,17.141683778,1,6.7871321013,1,CR,196
67,NH02,140,,1,0,,,Y,3.9671457906,1,3.9671457906,1,CR,197
69,NH03,140,,2,3,,Y,Y,8.9226557153,1,8.9226557153,1,CR,198
53,NH03,150,,1,0,D,,Y,18.299794661,1,16.788501027,1,CR,199
79,NH04,80,,2,2,L,,Y,4.3039014374,1,1.8809034908,1,CR,200
40,NH02,150,,2,3,,Y,Y,19.334702259,0,0.0027378508,1,NR,201
55,NH02,150,,1,1,,,Y,19.775496235,0,19.775496235,0,CR,202
56,NH02,130,,2,1,D,,Y,17.787816564,0,7.2443531828,1,CR,203
65,NH02,160,,1,0,,,Y,18.05065024,0,18.05065024,0,CR,204
46,NH02,130,,1,0,,,Y,17.938398357,0,17.938398357,0,CR,205
44,NH03,140,,1,0,D,,Y,16.955509925,0,7.3675564682,1,CR,206
69,NH04,110,,2,3,D,Y,Y,10.316221766,1,2.1108829569,1,CR,207
55,NH04,130,,1,3,,,Y,12.216290212,1,12.216290212,1,CR,208
43,NH02,160,,2,2,,,Y,17.541409993,0,17.541409993,0,CR,209
37,NH03,120,,1,3,,Y,Y,17.779603012,0,17.779603012,0,CR,210
65,NH03,130,,1,0,D,,Y,18.95687885,0,11.504449008,1,CR,211
48,NH03,130,,1,0,D,,Y,18.36550308,0,9.0924024641,1,CR,212
65,NH04,120,,2,2,D,Y,Y,5.5852156057,1,0.4572210815,1,CR,213
54,NH02,130,,1,0,D,,Y,15.79192334,1,11.939767283,1,CR,214
73,NH03,150,,1,0,D,,Y,7.1868583162,1,2.7789185489,1,CR,215
32,NH04,110,,1,1,,,Y,17.659137577,0,17.659137577,0,CR,216
70,NH04,150,,1,1,,,Y,16.249144422,0,16.249144422,0,CR,217
86,NH04,120,,1,2,,,Y,11.786447639,1,11.786447639,1,CR,218
78,NH03,120,,2,0,,,Y,11.641341547,1,11.641341547,1,CR,219
56,NH04,130,,2,2,D,,Y,18.584531143,0,1.8425735797,1,CR,220
43,NH02,140,,2,1,,,Y,6.2696783025,0,4.9281314168,0,CR,221
79,NH04,140,,1,0,D,,Y,11.019849418,1,9.8562628337,1,CR,222
54,NH04,120,,2,2,,Y,Y,17.242984257,0,17.242984257,0,CR,223
63,NH04,170,,1,0,,,Y,16.917180014,0,16.917180014,0,CR,224
63,NH03,140,,1,0,D,,Y,13.952087611,1,0.9336071184,1,CR,225
60,NH02,120,,1,1,D,,Y,18.113620808,0,6.1656399726,1,CR,226
50,NH04,150,,2,3,D,Y,Y,3.8138261465,1,3.7672826831,1,CR,227
69,NH03,140,,2,3,D,,Y,2.6036960986,1,1.4866529774,1,CR,228
60,NH03,120,,2,2,D,,Y,15.279945243,1,9.3169062286,1,CR,229
65,NH03,120,,1,2,,,Y,14.368240931,0,14.368240931,0,CR,230
70,NH04,150,,1,1,D,,Y,8.8788501027,1,8.6488706366,1,CR,231
65,NH03,139,,1,3,,Y,Y,18.173853525,0,18.173853525,0,CR,232
77,NH04,140,,2,0,D,,Y,6.5434633812,1,6.0588637919,1,CR,233
46,NH04,130,,1,1,,,Y,12.889801506,0,12.889801506,0,CR,234
71,NH02,150,,1,0,D,,Y,2.5379876797,1,2.0013689254,1,CR,235
56,NH02,150,,2,2,D,,Y,15.854893908,1,2.3381245722,1,CR,236
33,NH02,160,,1,1,,,Y,16.180698152,0,16.180698152,0,CR,237
52,NH04,150,,1,0,L,,Y,3.5947980835,1,3.2744695414,1,CR,238
84,NH03,120,,1,2,D,,Y,1.787816564,1,0.9609856263,1,CR,239
76,NH04,130,,2,3,D,,Y,6.2943189596,1,0.2381930185,1,CR,240
38,NH03,140,,1,1,D,,Y,16.13963039,0,13.609856263,1,CR,241
56,NH03,140,,1,2,,,Y,15.644079398,0,15.644079398,0,CR,242
45,NH04,140,,1,1,D,,Y,16.90349076,0,2.0561259411,1,CR,243
58,NH02,120,,1,0,D,,Y,4.7145790554,1,3.3374401095,1,CR,244
23.8,NH03,130,,1,1,,,Y,18.236824093,0,18.236824093,0,CR,245
68.8,NH03,150,,1,2,D,,Y,15.58110883,0,9.9192334018,1,CR,246
55.6,NH03,130,,1,0,D,,Y,15.794661191,0,3.0828199863,1,CR,247
62.3,NH02,150,,1,1,D,,Y,16.596851472,1,6.6557152635,1,CR,248
46.9,NH03,124,138,1,3,D,,Y,9.7823408624,1,1.1718001369,1,CR,249
52.9,NH02,130,,1,0,,,Y,15.504449008,0,15.504449008,0,CR,250
38,NH02,170,,2,0,L,,Y,14.46954141,1,7.9589322382,1,CR,251
63,NH03,130,,2,2,D,Y,Y,9.7796030116,1,1.7084188912,1,CR,252
48,NH02,170,,1,1,,,Y,5.9767282683,1,5.9767282683,1,CR,253
67,NH03,150,,1,2,,,Y,10.483230664,1,10.483230664,1,CR,254
54,NH02,160,,2,2,B,,Y,7.1704312115,1,0.8678986995,1,CR,255
59,NH02,140,,1,0,,,Y,9.0020533881,1,9.0020533881,1,CR,256
73,NH04,120,,1,1,D,,Y,1.7084188912,1,1.4510609172,1,CR,257
62,NH03,140,,2,2,D,,Y,7.2142368241,1,2.0533880903,1,CR,258
57,NH03,140,,2,0,D,,Y,13.957563313,0,2.2915811088,1,CR,259
74,NH02,140,,1,0,,,Y,10.40109514,0,10.40109514,0,CR,260
69,NH02,140,,1,2,,,Y,4.6625598905,1,4.6625598905,1,CR,261
61,NH03,150,,2,2,D,,Y,13.672826831,1,2.0561259411,1,CR,262
61,NH04,150,,1,0,D,,Y,15.392197125,0,1.2292950034,1,CR,263
38.1,NH02,150,,1,1,,,Y,9.1663244353,0,9.1663244353,0,CR,264
39.2,NH03,140,,1,3,D,,Y,14.620123203,0,2.4339493498,1,CR,265
23.4,NH04,120,,1,0,,,Y,14.724161533,0,14.724161533,0,CR,266
43.7,NH02,160,,1,0,D,,Y,17.727583847,0,1.2703627652,1,CR,267
57.4,NH04,150,,1,0,,,Y,15.986310746,0,15.986310746,0,CR,268
69,NH04,143,,1,0,,,Y,7.3292265572,1,7.3292265572,1,CR,269
66.4,NH02,160,,1,0,,,Y,15.290896646,0,15.290896646,0,CR,270
64.8,NH04,139,,1,0,D,,Y,5.158110883,1,5.158110883,1,CR,271
60.3,NH03,120,,1,3,,Y,Y,14.184804928,0,0.0027378508,1,NR,272
62.1,NH03,139,,1,3,L,Y,Y,2.5188227242,1,1.659137577,1,CR,273
77.3,NH03,130,,1,1,,,Y,14.740588638,0,14.740588638,0,CR,274
55.8,NH02,140,,1,0,,,Y,14.001368925,0,14.001368925,0,CR,275
84,NH02,130,,1,0,,,Y,0.9062286105,1,0.9062286105,1,CR,276
62,NH03,150,,1,0,,,Y,16.583162218,0,16.583162218,0,CR,277
71,NH04,140,,1,1,,,Y,15.036276523,0,15.036276523,0,CR,278
60,NH03,150,,1,0,D,,Y,14.557152635,0,13.733059548,1,CR,279
66,NH02,160,,2,2,D,,Y,3.3237508556,1,0.5311430527,1,CR,280
59,NH03,150,,1,0,D,,Y,14.976043806,0,3.5509924709,1,CR,281
51,NH02,150,,1,1,,,Y,14.546201232,0,14.546201232,0,CR,282
48,NH04,140,,2,1,D,,Y,6.5434633812,1,2.0588637919,1,CR,283
39,NH02,150,,2,3,L,,Y,2.9185489391,1,1.2676249144,1,CR,284
58,NH03,130,,1,0,D,,Y,1.5906913073,1,1.5414099932,1,CR,285
57,NH02,150,,1,1,,,Y,0.8980150582,1,0.8980150582,1,CR,286
57,NH03,130,,2,1,,,Y,4.2464065708,1,4.2464065708,1,CR,287
40,NH04,120,,1,1,D,,Y,12.813141684,1,1.53045859,1,CR,288
32,NH04,160,,2,3,,Y,Y,14.132785763,0,14.132785763,0,CR,289
54,NH03,140,,1,0,,,Y,13.886379192,0,13.886379192,0,CR,290
78,NH02,150,,1,0,D,,Y,5.4592744695,1,1.3880903491,1,CR,291
36,NH04,120,,2,2,,Y,Y,15.175906913,0,15.175906913,0,CR,292
50,NH04,130,,1,1,D,,Y,1.7796030116,1,0.5776865161,1,CR,293
61.4,NH03,116,204,1,3,D,Y,Y,11.364818617,1,4.4188911704,1,CR,294
79.3,NH04,166,,1,0,D,,Y,9.6700889802,0,1.7303216975,1,CR,295
73.1,NH04,120,,2,2,,,Y,10.283367556,1,10.283367556,1,CR,296
41.4,NH03,120,,2,1,,,Y,13.831622177,0,13.831622177,0,CR,297
67.2,NH02,150,,2,2,D,,Y,12.260095825,1,5.2539356605,1,CR,298
77.9,NH04,130,,1,0,,,Y,15.586584531,0,15.586584531,0,CR,299
67.3,NH02,134,148,1,0,D,,Y,16.865160849,0,3.7618069815,1,CR,300
47.3,NH02,153,,1,3,D,,Y,11.879534565,1,9.1991786448,1,CR,301
42.4,NH03,150,,1,0,,Y,Y,13.188227242,0,13.188227242,0,CR,302
76.4,NH02,140,,1,1,,,Y,9.607118412,1,9.607118412,1,CR,303
52,NH04,150,,1,1,,,Y,14.220396988,0,14.220396988,0,CR,304
71,NH02,130,,2,2,D,,Y,10.184804928,1,10.179329227,1,CR,305
60,NH02,150,,1,0,D,,Y,12.854209446,1,11.865845311,1,CR,306
44,NH04,145,,1,3,D,,Y,14.877481177,0,10.19028063,1,CR,307
58,NH02,120,,1,3,,,Y,12.988364134,0,12.988364134,0,CR,308
41,NH04,150,,1,0,,,Y,13.776865161,0,13.776865161,0,CR,309
43,NH03,140,,1,3,D,,Y,13.519507187,0,1.9904175222,1,CR,310
41,NH02,140,,2,1,,,Y,2.7405886379,1,2.7405886379,1,CR,311
46,NH03,120,,1,1,L,,Y,14.36550308,0,4.2108145106,1,CR,312
59.3,NH03,160,,2,3,D,,Y,13.711156742,0,9.6481861739,1,CR,313
37.8,NH04,140,,1,0,D,Y,Y,12.668035592,0,2.4558521561,1,CR,314
50.8,NH02,145,,2,3,D,,Y,7.1923340178,1,0.5393566051,1,CR,315
60.1,NH02,140,,1,3,D,,Y,11.969883641,1,4.977412731,1,CR,316
56,NH02,110,,1,0,,,Y,12.501026694,0,12.501026694,0,CR,317
49,NH02,160,,2,1,,,Y,14.343600274,0,14.343600274,0,CR,318
58,NH03,140,,1,0,D,,Y,14.483230664,0,2.9952087611,1,CR,319
66,NH04,150,,1,0,,,Y,13.976728268,1,13.976728268,1,CR,320
70,NH04,140,,2,1,L,Y,Y,2.0670773443,1,0.6899383984,1,CR,321
60,NH04,130,,1,3,D,,Y,13.034907598,0,9.3004791239,1,CR,322
63,NH03,160,,1,1,D,,Y,2.4941820671,1,2.1273100616,1,CR,323
79,NH03,110,,1,1,D,,Y,4.6735112936,1,3.4031485284,1,CR,324
66,NH03,140,,1,0,,,Y,12.517453799,0,12.517453799,0,CR,325
56,NH03,130,,2,2,D,,Y,12.229979466,0,1.87816564,1,CR,326
47,NH02,140,,1,2,D,Y,Y,12.284736482,0,4.3422313484,1,CR,327
45,NH02,160,,1,1,D,,Y,13.998631075,0,3.8165639973,1,CR,328
74,NH03,100,,1,1,,,Y,4.1040383299,1,4.1040383299,1,CR,329
71,NH04,120,,1,2,,,Y,3.5920602327,1,3.5920602327,1,CR,330
65,NH03,150,,1,1,D,Y,Y,3.3237508556,1,1.6865160849,1,CR,331
63,NH03,130,,1,0,D,,Y,14.943189596,0,8.4599589322,1,CR,332
62,NH04,140,,1,0,D,,Y,13.073237509,0,4.5338809035,1,CR,333
60,NH03,150,,2,1,D,,Y,3.5728952772,1,0.9062286105,1,CR,334
35.6,NH02,120,,2,1,D,,Y,11.917864476,0,7.9288158795,1,CR,335
71.2,NH02,126,,1,2,B,,Y,6.8254620123,1,5.3470225873,1,CR,336
59.1,NH04,137,,1,2,L,,Y,8.2546201232,1,7.0006844627,1,CR,337
67.1,NH02,144,406,1,0,D,,Y,5.7686516085,1,0.7665982204,1,CR,338
46.2,NH02,140,,1,0,,,Y,14.702258727,0,14.702258727,0,CR,339
75.4,NH02,128,,1,0,,,Y,11.876796715,0,11.876796715,0,CR,340
59.3,NH02,120,,1,1,,,Y,13.431895962,0,13.431895962,0,CR,341
83.2,NH02,177,,1,0,D,,Y,8.0821355236,1,0.8542094456,1,CR,342
27.4,NH04,129,75,1,0,,,Y,9.029431896,0,9.029431896,0,CR,343
57.5,NH04,149,,1,3,D,Y,Y,10.54072553,1,9.7303216975,1,CR,344
56.3,NH02,148,107,1,1,D,,Y,11.219712526,0,0.462696783,1,CR,345
38.8,NH03,141,,1,0,L,,Y,11.47980835,0,0.6132785763,1,CR,346
67.4,NH02,163,,1,0,,,Y,13.347022587,0,13.347022587,0,CR,347
67.7,NH03,139,,2,3,,Y,Y,0.8268309377,1,0.8268309377,1,CR,348
68.9,NH04,125,,1,0,,Y,Y,11.589322382,0,11.589322382,0,CR,349
58.4,NH03,146,,2,2,,Y,Y,12.988364134,0,12.988364134,0,CR,350
36.5,NH02,152,119,1,0,,,Y,13.245722108,0,13.245722108,0,CR,351
40.2,NH02,151,139,1,1,,,Y,11.819301848,0,11.819301848,0,CR,352
50,NH03,136,132,1,0,,,Y,11.394934976,0,11.394934976,0,CR,353
39.3,NH02,132,151,2,2,,,Y,11.874058864,0,11.874058864,0,CR,354
53.6,NH02,124,165,2,2,D,,Y,12.821355236,0,0.5968514716,1,CR,355
47.9,NH03,133,151,1,0,D,,Y,13.081451061,0,1.1608487337,1,CR,356
76.7,NH04,153,175,1,0,,Y,Y,7.6550308008,1,7.6550308008,1,CR,357
54.6,NH03,141,156,1,3,,Y,Y,0.9171800137,1,0.9171800137,1,CR,358
76.5,NH03,132,167,1,2,,,Y,3.8822724162,1,3.8822724162,1,CR,359
62.9,NH03,139,125,1,0,,,Y,11.307323751,0,11.307323751,0,CR,360
50.5,NH04,150,,2,2,,Y,Y,12.665297741,0,12.665297741,0,CR,361
56.2,NH03,144,,2,0,D,,Y,10.830937714,0,5.9383983573,1,CR,362
64.1,NH03,143,,1,0,,,Y,12.936344969,0,7.665982204,0,CR,363
73.6,NH02,148,,1,0,,,Y,12.002737851,0,12.002737851,0,CR,364
54.5,NH02,145,153,1,0,,,Y,10.502395619,0,10.502395619,0,CR,365
69.3,NH02,136,164,1,0,D,,Y,12.826830938,1,7.4058863792,1,CR,366
41,NH04,158,139,1,0,,,Y,10.524298426,0,10.524298426,0,CR,367
60.2,NH03,148,172,1,0,,,Y,10.568104038,0,10.568104038,0,CR,368
69.1,NH03,133,90,1,0,D,,Y,11.523613963,0,4.2162902122,1,CR,369
45.6,NH03,136,,2,2,D,,Y,10.584531143,0,7.8357289528,1,CR,370
53.7,NH02,128,,2,3,D,,Y,13.171800137,0,0.8678986995,1,CR,371
62.8,NH03,128,173,1,1,D,,Y,11.290896646,0,9.1225188227,1,CR,372
72,NH03,152,117,1,1,,,Y,4.0684462697,1,4.0684462697,1,CR,373
74,NH03,151,218,1,2,,,Y,5.0650239562,0,5.0650239562,0,CR,374
70.8,NH02,128,,1,0,D,,Y,6.6091718001,1,4.8432580424,1,CR,375
41.4,NH04,139,285,1,3,,Y,Y,11.258042437,0,8.7392197125,0,CR,376
66.9,NH03,137,122,2,2,,,Y,10.05338809,0,10.05338809,0,CR,377
60,NH04,134,96,2,3,,Y,Y,1.5961670089,1,0.0027378508,1,NR,378
44,NH03,148,141,2,1,,,Y,2.3189596167,1,2.3189596167,1,CR,379
67.9,NH03,123,149,1,1,L,,Y,9.7166324435,0,0.3504449008,1,CR,380
47.4,NH03,143,156,1,2,D,,Y,11.438740589,0,1.87816564,1,CR,381
63.2,NH03,148,170,2,2,,,Y,9.0376454483,0,9.0376454483,0,CR,382
61.8,NH03,164,169,1,0,,,Y,6.160164271,1,5.9082819986,1,CR,383
42.8,NH03,136,158,2,2,B,Y,Y,9.5331964408,0,5.735797399,1,CR,384
60.8,NH04,156,163,1,2,,Y,Y,10.321697467,0,10.321697467,0,CR,385
39.8,NH03,114,146,1,0,D,,Y,9.568788501,0,4.1779603012,1,CR,386
43.2,NH04,123,137,1,0,,,Y,9.6427104723,0,9.6427104723,0,CR,387
69.4,NH03,152,143,1,3,D,,Y,9.1389459274,0,7.0636550308,1,CR,388
64,NH03,134,123,2,1,,,Y,2.6967830253,1,2.6967830253,1,CR,389
75.6,NH03,134,145,1,0,D,,Y,8.9308692676,1,2.1409993155,1,CR,390
63,NH04,132,309,1,2,D,Y,Y,8.9089664613,0,8.5065023956,1,CR,391
72.5,NH02,143,154,1,0,D,,Y,8.9965776865,0,6.5790554415,1,CR,392
50.9,NH04,155,182,1,0,,Y,Y,8.9308692676,0,8.9308692676,0,CR,393
73.2,NH03,143,185,1,0,D,,Y,6.6721423682,1,4.2819986311,1,CR,394
56.5,NH04,135,130,1,0,,,Y,8.8761122519,0,8.8761122519,0,CR,395
59.5,NH03,163,,1,1,D,,Y,9.0212183436,0,1.3716632444,1,CR,396
53.4,NH02,117,,1,3,L,Y,Y,4.4079397673,1,1.993155373,1,CR,397
55.6,NH04,126,129,1,0,D,Y,Y,7.1485284052,1,1.697467488,1,CR,398
70.7,NH03,157,,1,3,D,,Y,8.0739219713,0,3.6221765914,1,CR,399
42.8,NH04,120,126,1,2,,,Y,5.3963039014,0,5.3963039014,0,CR,400
47,NH02,130,118,1,0,D,,Y,8.5174537988,0,3.0061601643,1,CR,401
68.8,NH03,146,203,2,3,,Y,Y,1.5633127995,1,0.0027378508,1,NR,402
47.5,NH03,137,172,2,1,D,,Y,8.3942505133,0,3.4113620808,1,CR,403
61.3,NH04,141,144,1,0,,,Y,8.052019165,0,8.052019165,0,CR,404
48.3,NH04,144,,1,2,,Y,Y,8.2765229295,0,0.0027378508,1,NR,405
56.4,NH03,127,185,1,0,,,Y,8.1204654346,0,8.1204654346,0,CR,406
62,NH02,156,161,1,0,,,Y,8.3668720055,0,8.3668720055,0,CR,407
62.9,NH03,133,,1,2,,,Y,3.7535934292,1,3.7535934292,1,CR,408
32.3,NH04,132,,1,2,D,Y,Y,5.9028062971,1,5.3442847365,1,CR,409
78.6,NH03,128,,1,1,,,Y,7.0828199863,1,7.0828199863,1,CR,410
53.9,NH02,137,,1,3,,,Y,7.6687200548,0,7.6687200548,0,CR,411
38.9,NH03,156,,1,0,D,,Y,10.461327858,0,1.1225188227,1,CR,412
79.7,NH03,161,166,2,2,,Y,Y,0.8952772074,1,0.0027378508,1,NR,413
62.8,NH03,127,,1,0,,,Y,7.2169746749,0,7.2169746749,0,CR,414
80.2,NH02,125,164,1,0,,,Y,5.5468856947,1,5.5468856947,1,CR,415
62.8,NH02,143,180,1,0,,,Y,7.4633812457,0,7.4633812457,0,CR,416
55.7,NH02,140,148,1,2,,,Y,9.5468856947,0,9.5468856947,0,CR,417
55.4,NH02,153,153,2,3,D,,Y,8.9801505818,0,8.8514715948,1,CR,418
64.7,NH02,138,189,2,3,,Y,Y,2.8473648186,1,0.0027378508,1,NR,419
69.9,NH04,130,503,1,0,D,Y,Y,7.0554414784,0,6.8993839836,1,CR,420
40.1,NH04,139,195,1,2,,,Y,8.4490075291,0,8.4490075291,0,CR,421
26.1,NH03,113,,2,0,,,Y,9.7741273101,0,9.7741273101,0,CR,422
71.4,NH03,146,617,2,3,,Y,Y,1.8480492813,1,1.8480492813,1,CR,423
54.7,NH03,155,128,1,1,D,,Y,6.4777549624,0,3.6577686516,1,CR,424
55.5,NH03,166,144,2,2,D,,Y,8.7939767283,0,1.2265571526,1,CR,425
77.8,NH04,148,179,2,3,D,,Y,3.099247091,1,1.0568104038,1,CR,426
72.1,NH04,138,174,1,0,,,Y,6.7926078029,0,6.7926078029,0,CR,427
62.6,NH02,143,172,1,0,,,Y,7.7973990418,0,7.7973990418,0,CR,428
53.1,NH03,123,154,1,1,D,,Y,6.4421629021,0,3.6824093087,1,CR,429
60.9,NH02,144,140,1,0,D,,Y,5.787816564,0,5.787816564,1,CR,430
55.3,NH04,154,161,1,0,D,Y,Y,7.9425051335,0,5.4647501711,1,CR,431
63.8,NH03,152,295,1,0,,,Y,1.4620123203,1,1.4620123203,1,CR,432
37.8,NH04,148,154,1,0,,Y,Y,6.2696783025,0,6.2696783025,0,CR,433
56.5,NH03,138,107,2,3,,Y,Y,6.4832306639,0,6.4832306639,0,CR,434
71.8,NH04,129,172,1,3,,Y,Y,1.4483230664,1,1.4483230664,1,CR,435
55.8,NH04,163,129,1,0,,,Y,7.3319644079,0,7.3319644079,0,CR,436
82.5,NH04,161,120,1,0,D,,Y,4.7830253251,1,3.871321013,1,CR,437
61.8,NH04,145,,2,2,,Y,Y,5.0513347023,0,5.0513347023,0,CR,438
58,NH03,143,,2,1,,,Y,3.2525667351,1,3.2525667351,1,CR,439
40.8,NH04,161,156,2,3,D,Y,Y,8.4380561259,0,4.0109514031,1,CR,440
81.3,NH03,139,187,1,2,,,Y,5.9493497604,1,5.9493497604,1,CR,441
71.9,NH04,144,155,1,0,,,Y,8.4380561259,0,8.4380561259,0,CR,442
63.6,NH04,155,118,1,0,D,,Y,8.424366872,1,8.2628336756,1,CR,443
38.1,NH04,153,158,1,0,,Y,Y,8.5694729637,0,8.5694729637,0,CR,444
33.8,NH02,156,366,2,2,,Y,Y,7.832991102,0,7.832991102,0,CR,445
38.7,NH02,146,202,1,3,,,Y,7.4442162902,0,7.4442162902,0,CR,446
37.8,NH03,146,153,2,3,,Y,Y,4.3915126626,0,4.3915126626,0,CR,447
20.5,NH04,136,136,1,0,,Y,Y,4.0246406571,0,4.0246406571,0,CR,448
57.4,NH03,151,124,1,0,D,,Y,7.9370294319,0,3.2635181383,1,CR,449
63.6,NH04,134,,1,0,,Y,Y,8.1095140315,0,8.1095140315,0,CR,450
56.1,NH04,143,208,1,2,,Y,Y,6.4832306639,0,6.4832306639,0,CR,451
51.4,NH02,135,150,1,0,,,Y,7.9123887748,0,7.9123887748,0,CR,452
58.7,NH03,158,136,2,1,,Y,Y,7.2525667351,0,7.2525667351,0,CR,453
39.5,NH02,144,122,1,0,D,,Y,6.0862422998,0,2.4804928131,1,CR,454
66.4,NH04,118,,2,3,D,Y,Y,4.1040383299,0,2.7049965777,1,CR,455
25.8,NH04,149,132,2,2,,Y,Y,4.3066392882,0,4.3066392882,0,CR,456
79.7,NH02,128,160,2,2,D,,Y,2.9678302533,1,2.9158110883,1,CR,457
65.4,NH04,139,,1,3,,Y,Y,6.6913073238,0,6.6913073238,0,CR,458
73.1,NH03,118,204,1,0,,,Y,1.0951403149,0,1.0951403149,0,CR,459
36.1,NH03,165,146,2,2,D,,Y,7.7070499658,0,0.8240930869,1,CR,460
38.9,NH04,139,129,1,0,,Y,Y,6.6940451745,0,6.6940451745,0,CR,461
59.8,NH03,142,,1,3,,Y,Y,6.7241615332,0,6.7241615332,0,CR,462
47.1,NH03,147,128,1,1,,,Y,7.1184120465,0,7.1184120465,0,CR,463
68.6,NH02,138,171,2,1,,,Y,1.4072553046,1,1.4072553046,1,CR,464
79.1,NH03,153,,1,2,D,,Y,3.1759069131,1,2.2368240931,1,CR,465
73.7,NH03,124,166,1,0,D,,Y,6.135523614,1,1.7686516085,1,CR,466
51.3,NH03,149,486,2,3,,Y,Y,6.8336755647,0,6.8336755647,0,CR,467
83.5,NH03,150,199,1,2,,,Y,6.7871321013,0,6.7871321013,0,CR,468
46.3,NH03,130,143,1,0,,,Y,7.4496919918,0,7.4496919918,0,CR,469
33.5,NH03,132,129,1,3,,,Y,6.9979466119,0,6.9979466119,0,CR,470
59.1,NH02,129,,2,2,,Y,Y,4.8761122519,0,4.8761122519,0,CR,471
40.8,NH02,153,421,2,3,,Y,Y,5.787816564,0,5.787816564,0,CR,472
63.8,NH04,138,165,1,0,,Y,Y,7.1731690623,0,7.1731690623,0,CR,473
58.4,NH02,152,221,1,1,D,,Y,7.1540041068,0,0.8815879535,1,CR,474
32.2,NH03,130,122,1,0,,Y,Y,7.0554414784,0,7.0554414784,0,CR,475
64.5,NH03,135,,1,0,,Y,Y,7.0472279261,0,7.0472279261,0,CR,476
57.6,NH02,150,643,1,0,,Y,Y,7.266255989,0,7.266255989,0,CR,477
47.9,NH02,158,119,2,2,,Y,Y,6.7022587269,0,6.7022587269,0,CR,478
44.3,NH04,151,445,1,2,,Y,Y,6.6502395619,0,6.6502395619,0,CR,479
56.1,NH04,150,152,1,0,,Y,Y,6.7186858316,0,6.7186858316,0,CR,480
54,NH03,162,,1,2,,Y,Y,6.4284736482,0,6.4284736482,0,CR,481
69.5,NH04,133,140,1,0,,Y,Y,6.6091718001,0,6.6091718001,0,CR,482
52.8,NH04,140,154,1,0,D,,Y,6.5379876797,0,1.18275154,1,CR,483
66.1,NH02,126,183,1,1,,,Y,6.4832306639,0,6.4832306639,0,CR,484
72,NH04,126,116,1,0,,Y,Y,7.241615332,0,7.241615332,0,CR,485
69.8,NH02,153,140,1,2,,,Y,2.7679671458,0,2.7679671458,0,CR,486
45.6,NH02,154,179,1,3,,,Y,6.7488021903,0,6.7488021903,0,CR,487
42.9,NH04,163,,1,0,,Y,Y,6.2149212868,0,6.2149212868,0,CR,488
34.8,NH02,136,131,2,2,,Y,Y,6.6228610541,0,6.6228610541,0,CR,489
57.2,NH04,161,152,2,0,,Y,Y,3.9698836413,0,3.9698836413,0,CR,490
54.6,NH02,131,164,2,0,B,,Y,5.8672142368,0,3.3785078713,1,CR,491
60.9,NH02,157,,1,3,,,Y,4.8678986995,0,4.8678986995,0,CR,492
64.8,NH04,139,192,1,0,,Y,Y,6.2450376454,0,6.2450376454,0,CR,493
59.9,NH03,153,131,1,1,,,Y,6.4585900068,0,6.4585900068,0,CR,494
52.7,NH03,135,111,1,0,,,Y,6.4476386037,0,6.4476386037,0,CR,495
47.3,NH02,137,,1,2,,,Y,3.0746064339,0,3.0746064339,0,CR,496
80.3,NH04,118,,1,3,,Y,Y,4.1095140315,0,4.1095140315,0,CR,497
68.7,NH03,161,164,1,1,D,,Y,2.7734428474,1,1.9110198494,1,CR,498
74.5,NH04,147,,1,1,,Y,Y,2.9897330595,1,2.9897330595,1,CR,499
75.5,NH02,152,179,1,1,D,,Y,6.5106091718,0,2.507871321,1,CR,500
67.3,NH02,127,164,1,3,,,Y,5.9383983573,0,5.9383983573,0,CR,501
65.9,NH04,125,118,2,2,,Y,Y,5.4647501711,0,5.4647501711,0,CR,502
63.9,NH04,144,127,1,0,,,Y,5.6372347707,0,5.6372347707,0,CR,503
35.5,NH03,152,,2,1,,Y,Y,5.9520876112,0,5.9520876112,0,CR,504
74.1,NH04,144,171,2,2,,Y,Y,6.6776180698,0,6.6776180698,0,CR,505
74.4,NH04,145,,1,2,D,,Y,3.3237508556,1,1.9192334018,1,CR,506
84.3,NH04,105,,1,2,,Y,Y,3.7399041752,0,3.7399041752,0,CR,507
56.5,NH04,152,149,1,0,D,Y,Y,4.9034907598,0,3.3483915127,1,CR,508
73.6,NH04,135,457,2,1,,Y,Y,5.158110883,0,5.158110883,0,CR,509
82.7,NH02,161,,1,1,,,Y,3.6468172485,0,3.6468172485,0,CR,510
45.4,NH03,155,130,1,0,D,,Y,5.5879534565,0,2.1163586585,1,CR,511
39.6,NH04,134,,1,3,D,,Y,5.9466119097,0,2.6721423682,1,CR,512
65.2,NH04,128,163,1,0,,Y,Y,5.4045174538,0,5.4045174538,0,CR,513
76,NH03,138,,1,1,,,Y,5.440109514,0,5.440109514,0,CR,514
65.3,NH03,141,136,1,0,D,,Y,1.3963039014,1,0.4818617385,1,CR,515
42.4,NH04,127,705,2,3,D,Y,Y,2.6858316222,0,1.3853524983,1,CR,516
65.3,NH03,189,207,1,2,,,Y,5.18275154,0,5.18275154,0,CR,517
63.9,NH03,172,165,2,2,D,,Y,1.6125941136,1,1.0513347023,1,CR,518
77.4,NH03,153,,1,0,,,Y,3.5044490075,0,3.5044490075,0,CR,519
53.7,NH03,131,118,1,1,,,Y,4.6461327858,0,4.6461327858,0,CR,520
78.7,NH03,125,142,2,3,,Y,Y,5.7166324435,0,0.0027378508,1,NR,521
62,NH03,161,187,1,0,,Y,Y,3.4551676934,0,3.4551676934,0,CR,522
37.8,NH03,86,832,1,0,,,Y,5.1663244353,0,5.1663244353,0,CR,523
41.9,NH04,165,144,1,0,,Y,Y,4.6598220397,0,4.6598220397,0,CR,524
64,NH03,143,144,1,0,D,,Y,5.8726899384,0,2.8610540726,1,CR,525
72.2,NH04,166,169,2,2,B,Y,Y,5.0239561944,1,3.0088980151,1,CR,526
74.2,NH03,165,197,1,1,,,Y,0.7173169062,1,0.7173169062,1,CR,527
65.7,NH04,152,260,2,2,L,Y,Y,1.9904175222,1,1.659137577,1,CR,528
59.2,NH02,137,120,1,1,D,,Y,5.6180698152,0,3.4825462012,1,CR,529
66,NH02,139,129,1,0,,,Y,4.9746748802,0,4.9746748802,0,CR,530
80.6,NH03,117,,1,2,,,Y,0.553045859,1,0.0027378508,1,NR,531
71.6,NH03,134,169,1,0,D,,Y,2.3572895277,1,1.0431211499,1,CR,532
57.4,NH02,125,126,1,0,D,,Y,3.8740588638,0,0.3449691992,1,CR,533
35.8,NH03,166,140,2,1,,Y,Y,4.1943874059,0,4.1943874059,0,CR,534
56.1,NH04,135,131,2,3,B,Y,Y,4.93908282,0,2.0999315537,1,CR,535
54,NH04,144,109,1,2,,Y,Y,4.8815879535,0,4.8815879535,0,CR,536
70.6,NH02,154,125,2,0,,,Y,4.6023271732,0,4.6023271732,0,CR,537
34.5,NH02,149,,1,0,,Y,Y,3.9370294319,0,3.9370294319,0,CR,538
50.2,NH04,143,408,2,2,,Y,Y,4.6160164271,0,4.6160164271,0,CR,539
45.7,NH03,147,539,1,2,,,Y,4.3011635866,0,4.3011635866,0,CR,540
64,NH03,136,144,1,0,,,Y,3.4934976044,0,3.4934976044,0,CR,541
;
run;

* proc print;
run;

