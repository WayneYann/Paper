set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red 100Hz)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Steady)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

#----------------------------------------------------
set t epslatex color

set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red (Flame A)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Flame B)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

ethy = '/home/silideng/RunFM/C2H4/flamelet/TheSoot/for_NGA/Bluff/ethylene/S-Curve/C2H4_p01_0chi00001tf0300to0300.kg'
hy = '/home/silideng/RunFM/C2H4/flamelet/TheSoot/for_NGA/Bluff/hydrogen/S-Curve/C2H4_p01_0chi00001tf0300to0300.kg'

set o 'flamelet.tex'
set size 0.6,0.6
set xl '$Z$'
set yl '\vspace{-28pt}$Y_{\rm PAH} \times 10^4 $'
set xr [0:1]
set yr [0:1]
#set format y "%.1e"
set ytics 0,0.2,1
set xtics 0,0.2,1
#set key at 2.4,2.9e-2
set key samplen 0.8
#set lmargin at screen 0.15

p ethy u 1:($226*1e4) w l ls 1 t 'Ethylene',\
  hy u 1:($226*1e4)  w l ls 2 t 'Ethylene/Hydrogen'

reset
#--------------------------------------------------
set t epslatex color

set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red (Flame A)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Flame B)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

simA = '/home/silideng/RunNGA/bluff/Michael_old/flame_bestbc/stat.35/'
simB = '/home/silideng/RunNGA/bluff-c2h4h2/Michael_old/flame_bestbc/process_ethy/fv/'
expA = '/home/silideng/RunNGA/bluff-c2h4h2/bluff_exp/'
expB = '/home/silideng/RunNGA/bluff-c2h4h2/bluff_exp/'

set o 'fv_06.tex'
set size 0.6,0.6
set xl '$r/D_{\rm B}$'
set yl '\vspace{-28pt}$\langle f_V \rangle$ [ppb]'
set xr [0:0.5]
set yr [0:200]
#set format y "%.1e"
set ytics 0,50,200
set xtics 0,0.1,0.5
set key at 0.3,165
set key samplen 1.2
set key spacing 0.7
#set lmargin at screen 0.15
set label '$x/D_{\rm B} = 0.432$' at 0.03,185
set label '$\times 10$' at 0.31, 30
set arrow from 0.25,30 to 0.3,30
set arrow from 0.25,10 to 0.3,25
unset key


p simA.'fv_06' u ($4/5e-2):($1*1e9) w l ls 1 t 'Ethylene',\
  expA.'FA_fv_06.txt' u (-$1*3.6/50):2 every 4 w p pt 5 ps 1 lc 1 t 'Ethylene',\
  simB.'fv_06' u ($1/5e-2):($2*1e9*10)  w l ls 2 t 'Ethylene/Hydrogen',\
  expB.'FB_fv_06.txt' u (-$1*3.6/50):($2*10) every 4 w p pt 4 ps 1 lc 3 t 'Ethylene/Hydrogen'

unset label
unset arrow

set o 'fv_08.tex'
set label '$x/D_{\rm B} = 0.576$' at 0.03,185
set label '$\times 10$' at 0.38, 25
set arrow from 0.3,30 to 0.37,25
set arrow from 0.3,5 to 0.37,20
set key at 0.4,165
set key samplen 1.2
set key spacing 0.7

p simA.'fv_08' u ($4/5e-2):($1*1e9) w l ls 1 t 'Ethylene, LES',\
  expA.'FA_fv_08.txt' u (-$1*3.6/50):2 every 4 w p pt 5 ps 1 lc 1 t 'Ethylene, Exp.',\
  simB.'fv_08' u ($1/5e-2):($2*1e9*10)  w l ls 2 t 'Ethylene/Hydrogen, LES',\
  expB.'FB_fv_08.txt' u (-$1*3.6/50):($2*10) every 4 w p pt 4 ps 1 lc 3 t 'Ethylene/Hydrogen, Exp.'

reset

#------------------------------------------------
set t epslatex color

set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red (Flame A)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Flame B)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

ethy = '/home/silideng/RunFM/C2H4/flamelet/TheSoot/for_NGA/Bluff/ethylene/S-Curve/C2H4_p01_0chi00001tf0300to0300.kg'
hy = '/home/silideng/RunFM/C2H4/flamelet/TheSoot/for_NGA/Bluff/hydrogen/S-Curve/C2H4_p01_0chi00001tf0300to0300.kg'

set o 'timescale.tex'
set size 0.6,0.6
set xl '$Z$'
set yl '\vspace{-28pt}$1$ / $\tau$ [1/s]'
set xr [0:0.5]
set yr [10:1e5]
#set format y "%.1e"
set format y "$10^{%T}$"
set ytics 10,10,1e5
set xtics 0,0.1,0.5
set log y
#set key at 2.4,2.9e-2
#set key samplen 1.2
set key spacing 0.7
#set lmargin at screen 0.15
set mytics 0
unset key
set label at 0.22,0.4e5 "Ethylene: solid"
set label at 0.22,1.25e4 "Ethylene/Hydrogen: dashed"
set arrow from 0.11,10 to 0.11,1e5 nohead lw 5 lc -1 lt 2
set arrow from 0.18,10 to 0.18,1e5 nohead lw 2.5 lc -1

set label at 0.04,8e3 "Ox." 
set label at 0.13,2e3 "S.G."
set label at 0.3,1e2 "Nucl. + Cond."


p ethy u 1:(0-$202/$217/$226) w l ls 1 lc 2 t 'C2H4-nuc+cond',\
  ethy u 1:193 w l ls 1 lc 1 t 'C2H4-surf',\
  ethy u 1:194 w l ls 1 lc 3 t 'C2H4-ox',\
  hy u 1:(0-$202/$217/$226) w l ls 2 lc 2 t 'H2-nuc+cond',\
  hy u 1:193 w l ls 2 lc 1 t 'H2-surf',\
  hy u 1:194 w l ls 2 lc 3 t 'H2-ox'

reset

#------------------------------------------------------
set t epslatex color

set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red (Flame A)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Flame B)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

simA = '/home/silideng/RunNGA/bluff/Michael_old/flame_bestbc/stat.35/z_01'
simB = '/home/silideng/RunNGA/bluff-c2h4h2/Michael_old/flame_bestbc/process_ethy/Z/Z_01'

set o 'Z_01.tex'
set size 0.6,0.6
set xl '$r/D_{\rm B}$'
set yl '\vspace{-28pt}$\langle Z \rangle$'
set xr [0:0.5]
set yr [0:1]
#set format y "%.1e"
set ytics 0,0.2,1
set xtics 0,0.1,0.5
#set key at 2.4,2.9e-2
#set key samplen 1.2
#set key spacing 1.0
#set lmargin at screen 0.15
set label '$x/D_{\rm B} = 0.072$' at 0.3,0.4

set arrow from 0,0.06103 to 0.5,0.06103 nohead lw 5 lc -1 lt 2
set arrow from 0,0.06366 to 0.5,0.06366 nohead lw 2.5 lc -1


p simA u ($4/5e-2):1 w l ls 1 t 'Ethylene',\
  simB u ($1/5e-2):2  w l ls 2 t 'Ethylene/Hydrogen'

reset

#-----------------------------------------------
set t epslatex color

set style line 1 lt 1 lw 5 lc 1 pt 5 ps 1 #Solid Red (Flame A)
set style line 2 lt 2 lw 5 lc 3 #Dashed Blue (Flame B)
set style line 3 lt 3 lw 5 lc 4 #Dotted  ()
set style line 4 lt 5 lw 5 lc 5 #Dash-Dotted 
set style line 999 pt 5 lc -1

expA = '/home/silideng/RunNGA/bluff-c2h4h2/bluff_exp/ISFV/ifv_FA'
expB = '/home/silideng/RunNGA/bluff-c2h4h2/bluff_exp/ISFV/ifv_FB'

set o 'ifv.tex'
set size 0.6,0.6
set xl '$x/D_{\rm B}$'
set yl '\vspace{-28pt}Radially Integrated $f_{\rm V}$ [ppm$\cdot$mm$^2$] Per Unit Height'
set xr [0:12]
set yr [0:800]
#set format y "%.1e"
set ytics 0,200,800
set xtics 0,2,12


p expA u 1:2 w p ps 0.6 pt 2 lc 1 t 'Ethylene',\
  expB u 1:2 w p ps 0.6 pt 5 lc 3 t 'Ethylene/Hydrogen' 