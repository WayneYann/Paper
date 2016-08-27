#-------------------------------------------------------
f_Zref = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/stat_04/alongZ/'

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

set t epslatex color
set o 'Zref.tex'

set xl 'Time [ms]'
set yl '\vspace{-28pt}$\frac{\chi(Z)}{f(Z,Z_{\rm st})}$ [1/s]'
set xr [0:1.5]


p f_Zref.'../flamelet/CA.in' u ($1*1000):6 w l ls 1 t '$Z = Z_{\rm st}$',\
  f_Zref.'0.2/CHI_time' u ($1*1000):($3/2.5263) w l ls 2 t '$Z = 0.2$',\
  f_Zref.'0.4/CHI_time' u ($1*1000):($3/4.8110) w l ls 3 t '$Z = 0.4$',\
  f_Zref.'0.6/CHI_time' u ($1*1000):($3/4.8110) w l ls 4 t '$Z = 0.6$'
  
#  f_Zref.'0.3/CHI_time' u ($1*1000):($3/3.8966) w l t 'Z=0.3',\
#  f_Zref.'0.5/CHI_time' u ($1*1000):($3/5.1299) w l t '$Z = 0.5$',\

reset

#--------------------------------------------------------
p1X = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/stat_04/'
p2X = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/2X/stat_02/'

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

set t epslatex color
set o 'conv_zst_U.tex'

set size 0.45,0.5

set xl '$x/D$'
set yl '\vspace{-28pt}$U$ [m/s]'
set xr [0:10]
set yr [0:4]
set xtics 0,2,10
set ytics 0,1.0,4
set key at 8.25,1.5 samplen 1.2
set label 'Nominal' at 3.75,1.2
set label 'Coarser' at 3.75,0.65

p p2X.'zst/U' u ($1/0.0008):2 w l ls 1 t ' ',\
  p1X.'flamelet/u_x_Zst' u ($1/0.0008):2 w l ls 2 t ' '

unset label

#
set t epslatex color
set o 'conv_zst_T.tex'

set size 0.5,0.5

set xl '$x/D$'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:10]
set yr [600:2600]
set xtics 0,2,10
set ytics 600,400,2600
set key at 5.75,2460 samplen 1.2
set label 'Nominal' at 1.25,2300
set label 'Coarser' at 1.25,2000

p p2X.'zst/T' u ($1/0.0008):2 w l ls 1 t ' ',\
  p1X.'alongZ/zst/T' u ($1/0.0008):2 w l ls 2 t ' '

unset label

#
set t epslatex color
set o 'conv_zst_H2O2.tex'

set size 0.52,0.5

set xl '$x/D$'
set yl '\vspace{-52pt}$Y_{\rm H_2O_2}$'
set xr [0:10]
set yr [0:0.01]
set xtics 0,2,10
set ytics 0,0.002,0.01
set key at 5.875,0.0092 samplen 1.2
set label 'Nominal' at 1.25,0.0085
set label 'Coarser' at 1.25,0.007

p p2X.'zst/H2O2' u ($1/0.0008):2 w l ls 1 t ' ',\
  p1X.'alongZ/zst/H2O2' u($1/0.0008) :2 w l ls 2 t ' '

unset label
reset

#----------------------------------------------------
set t epslatex color solid
set o 'CEMA_800.tex'

set yzeroaxis lt 1 lc -1
set border 1

set xtics nomirror
set ytics nomirror
set ytics scale 0
set lmargin at screen 0.4
set yrange [0:12]
set xrange [-1:1]
set xl 'Normalized Participation Index'

set key at 0.7,4.2 spacing 0.8 samplen 1.5 invert

set label 'Point A' at 0.2,1.85
set label 'Point B' at 0.2,2.35
set label 'Point C' at 0.2,2.9
set label 'Point D' at 0.2,3.4
set label 'Point E' at 0.2,3.9
set label '$800$ K' at 0.2,4.5

p 'data_CEMA_800' u (-$3/2):1:($3/2):($1-$1+0.05):yticlabels(4) w boxxyerrorbars lc -1 fs pattern 0 border -1 t ' ',\
  '' u (-$5/2):($1+0.13):($5/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 2 border -1 t ' ',\
  '' u ($7/2):($1+0.26):($7/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 3 border -1 t ' ',\
  '' u (-$6/2):($1+0.39):($6/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 6 border -1 t ' ',\
  '' u ($8/2):($1+0.52):($8/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 1 border -1 t ' '

unset label

#
set t epslatex color solid
set o 'CEMA_1100.tex'

set yzeroaxis lt 1 lc -1
set border 1

set xtics nomirror
set ytics nomirror
set ytics scale 0
set lmargin at screen 0.4
set yrange [0:12]
set xrange [-1:1]
set xl 'Normalized Participation Index'

set key at -0.4,4.2 spacing 0.8 samplen 1.5 invert

set label 'Point A' at -0.9,1.9
set label 'Point B' at -0.9,2.4
set label 'Point C' at -0.9,2.9
set label 'Point D' at -0.9,3.4
set label 'Point E' at -0.9,3.9
set label '$1100$ K' at -0.9,4.5

p 'data_CEMA_1100' u ($3/2):1:($3/2):($1-$1+0.05):yticlabels(4) w boxxyerrorbars lc -1 fs pattern 0 border -1 t ' ',\
  '' u ($5/2):($1+0.13):($5/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 2 border -1 t ' ',\
  '' u (-$7/2):($1+0.26):($7/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 3 border -1 t ' ',\
  '' u ($6/2):($1+0.39):($6/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 6 border -1 t ' ',\
  '' u (-$8/2):($1+0.52):($8/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 1 border -1 t ' '

unset label
reset

#----------------------------------------------------
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/1100/long/4X/stat_04/LFM/alongZ/'
L11 = '/home/silideng/RunFM/DME/flamelet/unsteady/1100/LFM/'

set t epslatex color dashed size 8.0,4.2
set o 'LFA.tex'

set multi
unset key
set label '$700$ K' at screen 0.15,1.0
set label '$800$ K' at screen 0.35,1.0
set label '$900$ K' at screen 0.55,1.0
set label '$1100$ K' at screen 0.75,1.0
set label '$Z = 0.3$' at screen -0.02,0.2
set label '$Z = 0.2$' at screen -0.02,0.53
set label '$Z = Z_{\rm st}$' at screen -0.02,0.87

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

#
set size 0.25,0.33
set ori 0.6,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.0]
set yr [800:2800]
set xtics 0,0.25,1.0
set ytics 800,400,2800
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L11.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.6,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.0]
set yr [800:2800]
set xtics 0,0.25,1.0
set ytics 800,400,2800
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L11.'profile/sort/0.2' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.6,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.0]
set yr [400:2400]
set xtics 0,0.25,1.0
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.3$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L11.'profile/sort/0.3' u 1:4 w l ls 2 t ' '

unset label

#
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/900/2X/stat_06/LFM/alongZ/'
L9 = '/home/silideng/RunFM/DME/flamelet/unsteady/900/LFM/'

set size 0.25,0.33
set ori 0.4,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.2]
set yr [600:2600]
set xtics 0,0.3,1.2
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L9.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.4,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.2]
set yr [600:2600]
set xtics 0,0.3,1.2
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L9.'profile/sort/0.2' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.4,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:1.2]
set yr [400:2400]
set xtics 0,0.3,1.2
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.3$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L9.'profile/sort/0.3' u 1:4 w l ls 2 t ' '

unset label

#
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/800/2X/stat_02/LFM/alongZ/'
L8 = '/home/silideng/RunFM/DME/flamelet/unsteady/800/LFM/'

set size 0.25,0.33
set ori 0.2,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:2.4]
set yr [600:2600]
set xtics 0,0.6,2.4
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L8.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.2,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:2.4]
set yr [600:2600]
set xtics 0,0.6,2.4
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L8.'profile/sort/0.2' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.2,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:2.4]
set yr [400:2400]
set xtics 0,0.6,2.4
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.3$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L8.'profile/sort/0.3' u 1:4 w l ls 2 t ' '

unset label


#
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/700/stat_06/LFM/alongZ/'
L7 = '/home/silideng/RunFM/DME/flamelet/unsteady/700/LFM/'

set size 0.25,0.33
set ori 0.0,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:10]
set yr [400:2400]
set xtics 0,2.5,10
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L7.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.0,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:10]
set yr [400:2400]
set xtics 0,2.5,10
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L7.'profile/sort/0.2' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.25,0.33
set ori 0.0,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-48pt}$T$ [K]'
set xr [0:10]
set yr [200:2200]
set xtics 0,2.5,10
set ytics 200,400,2200

set key horizontal at screen 0.5, 0.06 samplen 2.0 spacing 1.0
#set label at 0.72,1200 '$Z = 0.3$'
set label at screen 0.4,0.04 '2D-CFD'
set label at screen 0.5,0.04 '1D-LFA'


#p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t '2D-CFD',\
#  L7.'profile/sort/0.3' u 1:4 w l ls 2 t '1D-LFM'
p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L7.'profile/sort/0.3' u 1:4 w l ls 2 t '    '

unset label

unset multi