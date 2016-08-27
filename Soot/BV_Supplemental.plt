set style line 1 lt 1 lw 5 lc 1 #Solid Red (Nominal)
set style line 2 lt 2 lw 5 lc 2 #Dashed Green (Half)
set style line 3 lt 1 lw 5 lc 3 #Dotted Blue (Double)

#------------------------------------------------------

set terminal epslatex color

set output 'BV_NB.tex'

set xl '$\phi$'
set yl 'Laminar Flame Speeds (cm/s)'

# CH4
#p '/home/silideng/mechanisms/n-butanol_Wei_Spec91/ToFM/validation/cpNBtoSoot_delDup/CH4/out' u 1:2 w lp t 'cpNBtoSoot', '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/Wei_MB102/out' u 1:2 w lp t 'MB102', '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/manually/test/out' u 1:2 w lp t 'cpMBtoTSNB'

# NB
p '/home/silideng/mechanisms/n-butanol_Wei_Spec91/ToFM/validation/thermo_mod_91/NB_out' u 1:2 w l ls 2 t 'Liu', '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/manually/butanol/out' u 1:2 w l ls 1 t 'Present work','/home/silideng/mechanisms/n-butanol_Wei_Spec91/ToFM/validation/CmpFlameSpeed/experiment_Andrew' u 1:2:3:4 w err ls 3 t 'Liu'

#------------------------------------------

set terminal epslatex color

set output 'BV_MB.tex'

set xl '$\phi$'
set yl 'Laminar Flame Speeds (cm/s)'

p '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/Wei_MB102/mb/out' u 1:2 w l ls 2 t 'Liu', '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/manually/mb/out' u 1:2 w l ls 1 t 'Present work','/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/Wei_MB102/mb/experiment_Andrew' u 1:2:3:4 w err ls 3 t 'Liu'


# Heptane
#p '/home/silideng/mechanisms/n-butanol_Wei_Spec91/ToFM/validation/TheSoot_heptane/out' u 1:2 w lp t 'TheSoot', '/home/silideng/mechanisms/methylbutanoate_Wei_Spec102/ToFM/validation/manually/heptane/out' u 1:2 w lp t 'cpMBtoTSNB','/home/silideng/mechanisms/n-butanol_Wei_Spec91/ToFM/validation/cpNBtoSoot_delDup/C7H16/out' u 1:2 w lp t 'cpNBtoSoot'