set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 2 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 3 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 4 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

#-------------------------------------------------------
f_Zref = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/stat_04/alongZ/'

set t epslatex color
set o 'Zref.tex'

set xl 'Time [s]'
set yl '\vspace{-28pt}$\chi_{\rm st}$ [1/s]'
set xr [0:0.0015]


p f_Zref.'../flamelet/CA.in' u 1:6 w l ls 1 t '$Z = Z_{\rm st}$',\
  f_Zref.'0.2/CHI_time' u 1:($3/2.5263) w l ls 2 t '$Z = 0.2$',\
  f_Zref.'0.4/CHI_time' u 1:($3/4.8110) w l ls 3 t '$Z = 0.4$',\
  f_Zref.'0.6/CHI_time' u 1:($3/4.8110) w l ls 4 t '$Z = 0.6$'
  
#  f_Zref.'0.3/CHI_time' u 1:($3/3.8966) w l t 'Z=0.3',\
#  f_Zref.'0.5/CHI_time' u 1:($3/5.1299) w l t '$Z = 0.5$',\

reset

#--------------------------------------------------------
p1X = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/stat_04/'
p2X = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/2X/stat_02/'

set t epslatex color
set o 'conv_zst_U.tex'

set size 0.5,0.5

set xl '$x$ [m]'
set yl '\vspace{-28pt}$U$ [m/s]'
set xr [0:0.008]
set yr [0:4]
set xtics 0,0.002,0.008
set ytics 0,1.0,4
set key bottom right

p p2X.'zst/U' u 1:2 w l ls 1 t 'Nominal',\
  p1X.'flamelet/u_x_Zst' u 1:2 w l ls 2 t 'Coarser'

reset

set t epslatex color
set o 'conv_zst_T.tex'

set size 0.5,0.5

set xl '$x$ [m]'
set yl '\vspace{-28pt}$T$ [K]'
set xr [0:0.008]
set yr [600:2600]
set xtics 0,0.002,0.008
set ytics 600,400,2600
set key top left

p p2X.'zst/T' u 1:2 w l ls 1 t 'Nominal',\
  p1X.'alongZ/zst/T' u 1:2 w l ls 2 t 'Coarser'

set t epslatex color
set o 'conv_zst_H2O2.tex'

set size 0.5,0.5

set xl '$x$ [m]'
set yl '\vspace{-28pt}$Y_{\rm H_2O_2}$'
set xr [0:0.008]
set yr [0:0.01]
set xtics 0,0.002,0.008
set ytics 0,0.002,0.01
set key top left

p p2X.'zst/H2O2' u 1:2 w l ls 1 t 'Nominal',\
  p1X.'alongZ/zst/H2O2' u 1:2 w l ls 2 t 'Coarser'

reset

#----------------------------------------------------

set t epslatex color
set o 'CEMA.tex'

reset

set key at graph 0.94, 0.18 samplen 0.2 spacing 0.8
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8
set xtics 
unset ytics

set xrange [-1:10]; set yrange [-1:1]
set ylabel ' ' 
set xlabel 'Normalized Participation Index'
set size 0.6,1.0

p 'data' u 3 fs pattern 3 title ' ', 0 w l ls -1 t ''
#, 'data' u 0:(0): w l ls -1 title ''