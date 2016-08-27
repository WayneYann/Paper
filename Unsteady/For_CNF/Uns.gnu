set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red 100Hz)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Steady)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

#----------------------------------------------------
set t epslatex color
set o 'sd_evo.tex'

set size 0.8,0.8

set xl 'Cycle'
set yl '\vspace{-28pt}$S_d/S_L$'
set xr [0:2]
set yr [0:10]
#set format y "%.1e"
set xtics 0,0.25,2.0
set ytics 0,2,10
set ytics nomirror
set y2tics
set y2r [0:15]
set y2l '\vspace{28pt}$x_d/D$'
set y2tics 0,3,15
set key at 1.02,10
set key spacing 0.8
set lmargin at screen 0.1
set rmargin at screen 0.7


p 11.2995/13.5518/0.865348 w l ls 2 lc 7 t 'Steady $S_d/S_L$',\
  4.57274e+01/1.548295e+01/36.1122*100 w l ls 2 lc 7 t '' ,\
  'sd_f100' u (($1-1.25e-2)/1e-2):($2/$3/$4*100) w lp ls 1 t '$S_d/S_L$',\
  'sd_f100' u (($1-1.25e-2)/1e-2):($5/8e-4) w lp ls 1 lc 3 pt 8 axes x1y2 t '$x_d/D$'


unset key
#------------------------------------------------------

set o 'xd_evo.tex'

set size 0.8,0.8

set xl 'Cycle'
set xr [0:2]
set yr [0:15]
#set format y "%.1e"
set xtics 0,0.25,2.0
set ytics 0,3,15
set ytics mirror
set yl '\vspace{-28pt}$x_d/D$'
unset y2l
unset y2tics
set key at 1.02,14.5
set key spacing 0.8
set lmargin at screen 0.1
set rmargin at screen 0.7


p 6.37207e-04/8E-4 w l ls 3 lc 7 t 'Steady 2.4 m/s',\
  7.60986e-03/8E-4 w l ls 2 lc 7 t 'Steady 8.0 m/s' ,\
  'sd_f100' u (($1-1.25e-2)/1e-2):($5/8e-4) w lp ls 1 lc 1 t '100 Hz',\
  'sd_f50' u (($1-2.25e-2)/2e-2):($5/8e-4) w lp ls 1 pt 8 lc 3 t '50 Hz',\
  'sd_f25' u (($1-4.25e-2)/4e-2):($5/8e-4) w lp ls 1 pt 7 lc 4 t '25 Hz'


unset key


#------------------------------------------------------
#set size 0.5,0.5
set o 'sd_hys_100Hz.tex'

set xl '$U_{\rm inlet}$'
set yl '\vspace{-28pt}$S_d/S_L$'
set xr [0:10]
set yr [0:10]
#set format y "%.1e"
set xtics 0,2,10
set ytics 0,2,10
set ytics mirror
unset y2tics
unset y2l
set key at 3.5,9.8
#set lmargin at screen 0.1
#set rmargin at screen 0.7

set arrow from 4.5,7.5 to 3,5.5 ls 1 lc 7
set arrow from 6.5,2.5 to 8,4.5 ls 1 lc 7
#set arrow from 2.4,1.3 to 6.1,1.3 heads size 0.2, 90 ls 1 lc 7 
set arrow from 2.4,0.6 to 6.1,0.6 heads size 0.2, 90 ls 1 lc 7 
set label "Induction period" at 3.5,1.1
set label "Decreasing-velocity" at 0.8,7 
set label "Increasing-velocity" at 7,2.5 
#set label "Induction period" at 3.5,0.8


p 'sd_2_4' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t 'Steady',\
  'sd_8_0' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t '',\
  'sd_f100' u (5.2+2.8*sin(2*3.1415926*100*$1)):($2/$3/$4*100) w lp ls 1 t '100 Hz'


unset key 
unset label
unset arrow

#------------------------------------------------------
#set size 0.5,0.5
set o 'sd_hys_frq.tex'

set xl '$U_{\rm inlet}$'
set yl '\vspace{-28pt}$S_d/S_L$'
set xr [0:10]
set yr [0:10]
#set format y "%.1e"
set xtics 0,2,10
set ytics 0,2,10
set ytics mirror
unset y2tics
unset y2l
set key at 3.5,9.8
#set lmargin at screen 0.1
#set rmargin at screen 0.7

set arrow from 4.5,7.5 to 3,5.5 ls 1 lc 7
set arrow from 6.5,2.5 to 8,4.5 ls 1 lc 7
#set arrow from 2.4,1.3 to 6.1,1.3 heads size 0.2, 90 ls 1 lc 7 
#set arrow from 2.4,0.6 to 6.1,0.6 heads size 0.2, 90 ls 1 lc 7 
#set label "Induction period" at 3.5,1.1
set label "Decreasing-velocity" at 0.8,7 
set label "Increasing-velocity" at 7,2.5 
#set label "Induction period" at 3.5,0.8


p 'sd_2_4' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t 'Steady',\
  'sd_3_2' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t '',\
  'sd_6_4' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t '',\
  'sd_8_0' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t '',\
  'sd_f100' u (5.2+2.8*sin(2*3.1415926*100*$1)):($2/$3/$4*100) w lp ls 1 t '100 Hz',\
  'sd_f50' u (5.2+2.8*sin(2*3.1415926*50*$1+3.1415926/4)):($2/$3/$4*100) w lp ls 1 lc 3 pt 8 t '50 Hz',\
  'sd_f25' u (5.2+2.8*sin(2*3.1415926*25*$1+3*3.1415926/8)):($2/$3/$4*100) w lp ls 1 lc 4 pt 7 t '25 Hz'


unset key 
reset 

#------------------------------------------------------
set size 0.6,0.6
set o 'H2O2_up_Z24.tex'
hyd = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/Forced/900_5_2/analysis/'
set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red 100Hz)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Steady)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

unset arrow
unset label

set xl '$x/D$'
set yl '\vspace{-28pt}$Y_{\rm H_2O_2}$'
set xr [0:10]
set yr [0:3e-2]
set format y "%.1e"
set ytics 0,0.6e-2,3.0e-2
set xtics 0,2,10
set key at 8,2.9e-2
set key spacing 0.8
set key samplen 2
set key invert
set lmargin at screen 0.15
set label '$Z = 0.24$ Decreasing-velocity Cycle' at 1.5,3.2e-2

p  hyd.'0.75E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle',\
   hyd.'0.7E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '0.45 cycle',\
   hyd.'0.5E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 t '0.25 cycle',\
   hyd.'steady_8_0/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'steady_2_4/H2O2_0.24' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s'



unset label

set o 'H2O2_down_Z24.tex'
set size 0.6,0.6
set key at 7,2.9e-2
set lmargin at screen 0.15
set label '$Z = 0.24$ Increasing-velocity Cycle' at 1.5,3.2e-2

p  hyd.'1.1E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 2 t '0.85 cycle',\
   hyd.'1.0E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 1 t '0.75 cycle',\
   hyd.'0.9E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 5 t '0.65 cycle',\
   hyd.'0.8E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '0.55 cycle',\
   hyd.'0.75E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle',\
   hyd.'steady_8_0/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'steady_2_4/H2O2_0.24' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s'

unset label
   
set size 0.6,0.6
set o 'H2O2_up_Z14.tex'
set xl '$x/D$'
set yl '\vspace{-28pt}$Y_{\rm H_2O_2}$'
set xr [0:10]
set yr [0:3e-2]
set format y "%.1e"
set ytics 0,0.6e-2,3.0e-2
set xtics 0,2,10
set key at 8,2.9e-2
set key spacing 0.8
set key samplen 2
set lmargin at screen 0.15
set label '$Z = 0.14$ Decreasing-velocity Cycle' at 1.5,3.2e-2

p  hyd.'0.75E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle',\
   hyd.'0.7E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 3 t '0.45 cycle',\
   hyd.'0.5E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 t '0.25 cycle',\
   hyd.'steady_8_0/H2O2_0.14' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'steady_2_4/H2O2_0.14' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s'

unset label

set o 'H2O2_down_Z14.tex'
set size 0.6,0.6
set key at 7,2.9e-2
set lmargin at screen 0.15
set label '$Z = 0.14$ Increasing-velocity Cycle' at 1.5,3.2e-2

p  hyd.'1.1E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 2 t '0.85 cycle',\
   hyd.'1.0E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 1 t '0.75 cycle',\
   hyd.'0.9E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 5 t '0.65 cycle',\
   hyd.'0.8E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 3 t '0.55 cycle',\
   hyd.'0.75E-2/H2O2_0.14' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle',\
   hyd.'steady_8_0/H2O2_0.14' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'steady_2_4/H2O2_0.14' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s'

unset label
reset

#-------------------------------------------------------
hyd = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/Forced/900_5_2/analysis/'
set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red 100Hz)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Steady)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

set o 'H2O2_32.tex'
set size 0.8,0.6
set xl '$x/D$'
set yl '\vspace{-28pt}$Y_{\rm H_2O_2}$'
set xr [0:5]
set yr [0:3.0e-2]
set format y "%.1e"
set ytics 0,0.6e-2,3.0e-2
set xtics 0,1,5
set key at 1.6,2.9e-2
set key samplen 1.2
set lmargin at screen 0.15

p  hyd.'steady_3_2/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 3.2 m/s',\
   hyd.'6.27E-3/H2O2_0.24' u ($1/8e-4):2 w l ls 1 t '100 Hz DV',\
   hyd.'f50/1.00E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '50 Hz DV',\
   hyd.'f25/1.76E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '25 Hz DV',\
   hyd.'8.73E-3/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 1 t '100 Hz IV',\
   hyd.'f50/1.50E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 2 lc 3 t '50 Hz IV',\
   hyd.'f25/2.74E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 4 t '25 Hz IV'
   



set o 'RO2_32.tex'
set size 0.8,0.6
set yl '\vspace{-28pt}$Y_{\rm CH_3OCH_2O_2}$'
set yr [0:3.5e-3]
set ytics 0,0.7e-3,3.5e-3
set key at 4.8,3.2e-3
set lmargin at screen 0.15



p  hyd.'steady_3_2/RO2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 3.2 m/s',\
   hyd.'6.27E-3/RO2_0.24' u ($1/8e-4):2 w l ls 1 t '100 Hz DV',\
   hyd.'f50/1.00E-2/RO2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '50 Hz DV',\
   hyd.'f25/1.76E-2/RO2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '25 Hz DV',\
   hyd.'8.73E-3/RO2_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 1 t '100 Hz IV',\
   hyd.'f50/1.50E-2/RO2_0.24' u ($1/8e-4):2 w l ls 2 lt 2 lc 3 t '50 Hz IV',\
   hyd.'f25/2.74E-2/RO2_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 4 t '25 Hz IV'
   


set o 'T_32.tex'
set size 0.8,0.6
set yl '\vspace{-28pt}$T [K]$'
set yr [500:2.5e3]
set ytics 500,0.4e3,2.5e3
set key at 1.6,2.4e3
set lmargin at screen 0.15



p  hyd.'steady_3_2/T_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 3.2 m/s',\
   hyd.'6.27E-3/T_0.24' u ($1/8e-4):2 w l ls 1 t '100 Hz DV',\
   hyd.'f50/1.00E-2/T_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '50 Hz DV',\
   hyd.'f25/1.76E-2/T_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '25 Hz DV',\
   hyd.'8.73E-3/T_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 1 t '100 Hz IV',\
   hyd.'f50/1.50E-2/T_0.24' u ($1/8e-4):2 w l ls 2 lt 2 lc 3 t '50 Hz IV',\
   hyd.'f25/2.74E-2/T_0.24' u ($1/8e-4):2 w l ls 1 lt 2 lc 4 t '25 Hz IV'