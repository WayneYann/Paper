set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red 100Hz)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Steady)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

#----------------------------------------------------
set t epslatex color
set o 'sd_hys.tex'

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
set arrow from 6,1.5 to 7.5,3.5 ls 1 lc 7
set label "Decreasing-velocity" at 0.5,6.5 
set label "Increasing-velocity" at 6.5,1.5 


p 'sd_2_4' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t 'Steady',\
  'sd_8_0' u 6:($1/$2/$3*100) w p pt 7 ps 2 lc 7 t '',\
  'sd_f100' u (5.2+2.8*sin(2*3.1415926*100*$1)):($2/$3/$4*100) w lp ls 1 t '100 Hz'

unset key 
reset 
#------------------------------------------------------
set size 0.6,0.6
set o 'H2O2_up.tex'
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
set lmargin at screen 0.15


p  hyd.'steady_2_4/H2O2_0.24' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s',\
   hyd.'steady_8_0/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'0.5E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 t '0.25 cycle',\
   hyd.'0.7E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '0.45 cycle',\
   hyd.'0.75E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle'


set o 'H2O2_down.tex'
set size 0.6,0.6
set key at 7,2.9e-2
set lmargin at screen 0.15

p  hyd.'steady_2_4/H2O2_0.24' u ($1/8e-4):2 w l ls 3 lc 7 t 'Steady 2.4 m/s',\
   hyd.'steady_8_0/H2O2_0.24' u ($1/8e-4):2 w l ls 2 lt 5 lc 7 t 'Steady 8.0 m/s',\
   hyd.'0.75E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 4 t '0.5 cycle',\
   hyd.'0.8E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 3 t '0.55 cycle',\
   hyd.'0.9E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 5 t '0.65 cycle',\
   hyd.'1.0E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 1 t '0.75 cycle',\
   hyd.'1.1E-2/H2O2_0.24' u ($1/8e-4):2 w l ls 1 lc 2 t '0.85 cycle'
   


