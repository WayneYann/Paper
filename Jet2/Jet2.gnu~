#----------------------------------------------------
set t epslatex color solid
set o 'CEMA_24.tex'

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
set label '$2.4$ m/s' at 0.2,4.5

p 'data_CEMA_24' u ($3/2):1:($3/2):($1-$1+0.05):yticlabels(4) w boxxyerrorbars lc -1 fs pattern 0 border -1 t ' ',\
  '' u (-$5/2):($1+0.13):($5/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 2 border -1 t ' ',\
  '' u (-$7/2):($1+0.26):($7/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 3 border -1 t ' ',\
  '' u (-$6/2):($1+0.39):($6/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 6 border -1 t ' ',\
  '' u (-$8/2):($1+0.52):($8/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 1 border -1 t ' '

unset label

#
set t epslatex color solid
set o 'CEMA_80.tex'

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
set label '$8.0$ m/s' at 0.2,4.5

#set key at -0.4,4.2 spacing 0.8 samplen 1.5 invert
#set label 'Point A' at -0.9,1.9
#set label 'Point B' at -0.9,2.4
#set label 'Point C' at -0.9,2.9
#set label 'Point D' at -0.9,3.4
#set label 'Point E' at -0.9,3.9
#set label '$8.0$ m/s' at -0.9,4.5

p 'data_CEMA_80' u (-$3/2):1:($3/2):($1-$1+0.05):yticlabels(4) w boxxyerrorbars lc -1 fs pattern 0 border -1 t ' ',\
  '' u (-$5/2):($1+0.13):($5/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 2 border -1 t ' ',\
  '' u (-$7/2):($1+0.26):($7/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 3 border -1 t ' ',\
  '' u (-$6/2):($1+0.39):($6/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 6 border -1 t ' ',\
  '' u ($8/2):($1+0.52):($8/2):($1-$1+0.05) w boxxyerrorbars lc -1 fs pattern 1 border -1 t ' '

unset label
reset

#----------------------------------------------------
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/Velocity/8_0/stat_06/LFM/alongZ/'
L80 = '/home/silideng/RunFM/DME/flamelet/unsteady/Velocity/8_0/LFM/'

set t epslatex color dashed size 6.0,4.2
set o 'LFA_V.tex'

set multi
unset key
set label '$2.4$ m/s' at screen 0.23,1.0
set label '$3.2$ m/s' at screen 0.53,1.0
set label '$8.0$ m/s' at screen 0.83,1.0
set label '$Z = 0.3$' at screen -0.02,0.27
set label '$Z = 0.2$' at screen -0.02,0.57
set label '$Z = Z_{\rm st}$' at screen -0.02,0.87

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

#
set size 0.33,0.33
set ori 0.65,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:2.0]
set yr [800:2800]
set xtics 0,0.5,2.0
set ytics 800,400,2800
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L80.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.33,0.33
set ori 0.65,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:2.0]
set yr [600:2600]
set xtics 0,0.5,2.0
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L80.'profile/sort/0.2' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.33,0.33
set ori 0.65,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:2.0]
set yr [400:2400]
set xtics 0,0.5,2.0
set ytics 400,400,2400
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.3$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L80.'profile/sort/0.3' u 1:4 w l ls 2 t ' '

unset label

#
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/900/2X/stat_06/LFM/alongZ/'
L9 = '/home/silideng/RunFM/DME/flamelet/unsteady/900/LFM/'

set size 0.33,0.33
set ori 0.35,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:1.2]
set yr [800:2800]
set xtics 0,0.3,1.2
set ytics 800,400,2800
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L9.'profile/sort/zst' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.33,0.33
set ori 0.35,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
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
set size 0.33,0.33
set ori 0.35,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
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
st = '/home/silideng/RunNGA/roundjet/autoign/30atm/nodil/Velocity/2_4/stat_05/LFM/alongZ/'
L24 = '/home/silideng/RunFM/DME/flamelet/unsteady/Velocity/2_4/LFM/'

set size 0.33,0.33
set ori 0.05,0.67
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:1.2]
set yr [800:2800]
set xtics 0,0.3,1.2
set ytics 800,400,2800
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = Z_{\rm st}$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'zst/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L24.'profile/sort/zst_re' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.33,0.33
set ori 0.05,0.37
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:1.2]
set yr [600:2600]
set xtics 0,0.3,1.2
set ytics 600,400,2600
#set key at 0.85, 1150 samplen 2.0 spacing 3.0
#set label at 0.72,1200 '$Z = 0.2$'
#set label at 0.72,1100 '2D-CFD'
#set label at 0.72,1000 '1D-LFM'

p st.'0.2/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L24.'profile/sort/0.2_re' u 1:4 w l ls 2 t ' '

unset label

#
set size 0.33,0.33
set ori 0.05,0.08
set xl '\vspace{12pt}Time [ms]'
set yl '\vspace{-36pt}$T$ [K]'
set xr [0:1.2]
set yr [400:2400]
set xtics 0,0.3,1.2
set ytics 400,400,2400

set key horizontal at screen 0.62, 0.06 samplen 2.0 spacing 1.0
#set label at 0.72,1200 '$Z = 0.3$'
set label at screen 0.48,0.04 '2D-CFD'
set label at screen 0.61,0.04 '1D-LFA'


#p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t '2D-CFD',\
#  L7.'profile/sort/0.3' u 1:4 w l ls 2 t '1D-LFM'
p st.'0.3/species_time.out' u ($1*1000):5 w l ls 1 t ' ',\
  L24.'profile/sort/0.3_re' u 1:4 w l ls 2 t '    '

unset label

unset multi

reset


#-----------------------------------------------------
L80 = '/home/silideng/RunFM/DME/flamelet/unsteady/Velocity/8_0/LFM/profile/sort/'

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

set t epslatex color 
set o '1D_V_HRR.tex'

set size 0.8,0.5

set xl 'Time [ms]'
set yl '\vspace{-28pt}$HRR$ [J/m$^3$-s]'
set xr [0:1.2]
set yr [1e8:1e14]
set format y "%.1e"
set xtics 0,0.3,1.2
set ytics 1e8,100,1e14
set log y
#unset key 
set key top left
unset xl

p L80.'zst' u 1:(0-$51) w l ls 1 t '$Z_{\rm st}$',\
  L80.'0.2' u 1:(0-$51) w l ls 2 t '$Z = 0.2$',\
  L80.'0.3' u 1:(0-$51) w l ls 3 t '$Z = 0.3$'

#------------------------------------------------------
set t epslatex color
set o '1D_V_T.tex'

set size 0.8,0.5

set xl 'Time [ms]'
set yl '\vspace{-28pt}$T$ [K]'
set xr [0:1.2]
set yr [500:2.6e3]
#set format y "%.0f"
set xtics 0,0.3,1.2
set ytics 500,700,2.6e3
unset log y
set key top left
unset xl


p L80.'zst' u 1:4 w l ls 1 t '$Z_{\rm st}$',\
  L80.'0.2' u 1:4 w l ls 2 t '$Z = 0.2$',\
  L80.'0.3' u 1:4 w l ls 3 t '$Z = 0.3$'

#------------------------------------------------------
set t epslatex color 
set o '1D_V_H2O2.tex'

set size 0.8,0.5

set xl 'Time [ms]'
set yl '\vspace{-28pt}H$_2$O$_2$ Mass Fraction'
set xr [0:1.2]
set yr [1e-7:1e-1]
set format y "%.1e"
set xtics 0,0.3,1.2
set ytics 1e-7,100,1e-1
set log y
#unset key
set key bottom left


p L80.'zst' u 1:(abs($13)) w l ls 1 t '$Z_{\rm st}$',\
  L80.'0.2' u 1:(abs($13)) w l ls 2 t '$Z = 0.2$',\
  L80.'0.3' u 1:(abs($13)) w l ls 3 t '$Z = 0.3$'

#------------------------------------------------------
set t epslatex color 
set o '1D_V_RO2.tex'

set size 0.8,0.5

set xl 'Time [ms]'
set yl '\vspace{-28pt}CH$_3$OCH$_2$O$_2$ Mass Fraction'
set xr [0:1.2]
set yr [1e-8:1e-2]
set format y "%.1e"
set xtics 0,0.3,1.2
set ytics 1e-8,100,1e-2
set log y
#unset key
set key bottom left
unset xl

p L80.'zst' u 1:(abs($35)) w l ls 1 t '$Z_{\rm st}$',\
  L80.'0.2' u 1:(abs($35)) w l ls 2 t '$Z = 0.2$',\
  L80.'0.3' u 1:(abs($35)) w l ls 3 t '$Z = 0.3$'

#------------------------------------------------------
set t epslatex color
set o '1D_V_OH.tex'

set size 0.8,0.5

set xl 'Time [ms]'
set yl '\vspace{-28pt}OH Mass Fraction'
set xr [0:1.2]
set yr [1e-8:1e-2]
set log y
set format y "%.1e"
set xtics 0,0.3,1.2
set ytics 1e-8,100,1e-2
#unset key
set key top left
unset xl

p L80.'zst' u 1:9 w l ls 1 t '$Z_{\rm st}$',\
  L80.'0.2' u 1:9 w l ls 2 t '$Z = 0.2$',\
  L80.'0.3' u 1:9 w l ls 3 t '$Z = 0.3$'

reset
#------------------------------------------------------
set t epslatex color
set o 'tau_t.tex'

set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 3 #Dashed Green (Half)
set style line 3 lt 3 lw 5 lc 4 #Dotted Blue (Double)
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted Magenta
set style line 999 pt 5 lc -1

set size 0.5,0.5

set xl 'Z'
set yl '\vspace{-28pt}Iginition Delay [ms]'
set xr [0:0.4]
set yr [1.05:1.11]
#set format y "%.1e"
set xtics 0,0.1,0.4
set ytics 1.05,0.02,1.11
unset key

p 'data_tau' u 3:4 w l ls 1

#--------------------------------------------------------
set t epslatex color
set o 'tau_1.tex'

set size 0.49,0.5

set xl 'Z'
set yl '\vspace{-28pt}First Stage Ignition Delay [ms]'
set xr [0:0.4]
set yr [0:0.9]
#set format y "%.1e"
set xtics 0,0.1,0.4
set ytics 0,0.3,0.9
unset key

p 'data_tau' u 1:2 w l ls 1
