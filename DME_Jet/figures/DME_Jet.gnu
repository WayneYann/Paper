f_conv = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/stat_04/alongZ/'


set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 2 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 3 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 4 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

#-------------------------------------------------------

set t epslatex color

set o 'Zref.tex'



p f_Zref.'0.2/CHI_time' u 1:($3/2.5263) w l t 'Z=0.2',\
  f_Zref.'0.3/CHI_time' u 1:($3/3.8966) w l t 'Z=0.3',\
  f_Zref.'0.4/CHI_time' u 1:($3/4.8110) w l t 'Z=0.4',\
  f_Zref.'0.5/CHI_time' u 1:($3/5.1299) w l t 'Z=0.5',\
  f_Zref.'0.6/CHI_time' u 1:($3/4.8110) w l t 'Z=0.6',\
  f_Zref.'../flamelet/CA.in' u 1:6 w p ps 0.1 t 'Z=Zst'