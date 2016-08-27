# Fixed oxygen concentration and strain rates

Hep = '/home/silideng/RunFM/nC7H16/MBNBTS/' 
NB = '/home/silideng/RunFM/nC4H9OH/MBNBTSmech/nC4H9OH/'
MB = '/home/silideng/RunFM/MB/'

set style line 1 lt 1 lw 2 lc 1 #Solid Red (Hep)
set style line 2 lt 1 lw 2 lc 2 #Solid Green (NB)
set style line 3 lt 1 lw 2 lc 3 #Dotted Blue (MB)
set style line 4 lt 0 lw 3 lc 1 #Dashed Red
set style line 5 lt 0 lw 3 lc 2 #Dashed Green
set style line 6 lt 0 lw 3 lc 3 #Dashed Blue
set style line 999 pt 5 lc -1

#-----------------------

p Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 5:54 w l ls 1 t 'n-heptane', NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 5:54 w l ls 2 t 'n-butanol', MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 5:54 w l ls 3 t 'MB', Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 5:454 w l ls 4 t 'fv-n-heptane' axes x1y2, NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 5:454 w l ls 5 t 'fv-n-butanol' axes x1y2, MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 5:454 w l ls 6 t 'fv-MB' axes x1y2

set ytics nomirror
set xl 'Z'
set yl 'A-C3H5 mass fraction'
set y2l 'fv'

set t png
set o 'A-C3H5.png'
rep
set t wxt
rep

#-----------------------
#p Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 1:7 w l t 'n-heptane', NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 1:7 w l t 'n-butanol', MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 1:7 w l t 'MB'

#set xl 'y (m)'
#set yl 'Temperature (K)'

#-----------------------
#p Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 5:7 w l t 'n-heptane', NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 5:7 w l t 'n-butanol', MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 5:7 w l t 'MB'

#set xl 'Z'
#set yl 'Temperature (K)'

#-----------------------
#p Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 5:454 w l ls 1 t 'n-heptane', NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 5:454 w l ls 2 t 'n-butanol', MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 5:454 w l ls 3 t 'MB', Hep.'Oxy_2222/N-C7H16_p01a00018tf0348to0300.kg' u 5:7 w l ls 4 t 'T-n-heptane' axes x1y2, NB.'OAr_2222/C4H9OH_p01a00018tf0369to0300.kg' u 5:7 w l ls 5 t 'T-n-butanol' axes x1y2, MB.'OAr_2222/MB-C5H10_p01a00018tf0354to0300.kg' u 5:7 w l ls 6 t 'T-MB' axes x1y2

#set ytics nomirror
#set xl 'Z'
#set yl 'fv'
#set y2l 'Temperature (K)'