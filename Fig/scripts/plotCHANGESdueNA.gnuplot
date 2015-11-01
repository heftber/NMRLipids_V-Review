#set term postscript enhanced color  
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "../changesDUEna.eps"
set size 1.4, 0.85
set multiplot  layout 2,2
set xrange [-1:1050] 
set ytic 0.01
#set key above
set label at screen 0.18,screen 0.8 "Choline order parameter changes"
set key at screen 0.6,screen 0.78 maxcols 1 maxrows 8
set key font ",13"


set yrange [-0.08:0.01]
set ylabel "{/Symbol b}   {/Symbol D}S_{CH}"
set origin 0,0.35
set size 0.65, 0.35
plot "../../../lipid_ionINTERACTION/Data/DPPC/NaCl/EXP-Akutsu1981-DPPC-NaClchange.dat"  using 1:($2*-0.00784) title 'DPPC+NaCl, ^2H NMR, T=323K' with linespoints  linetype 1 pt 7 lc rgb 'black', \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/BERGERnaclCONSchange.dat" using 1:2:3 with yerrorbars notitle pt 5 lt 1, "" using 1:2 with linespoint title 'POPC+NaCl, Berger, T=298K' pt 5 linetype 1, \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/BERGERnaclCONSchange.dat" using 1:4:5 with yerrorbars notitle  pt 5 lt 1, "" using 1:4 with lines notitle linetype 1, \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/CHARMMnaclCONSchange.dat" using 1:2:3 with yerrorbars notitle pt 5 lt 1 lc rgb 'green', "" using 1:2 with linespoint title 'POPC+NaCl, CHARMM, T=303K' pt 5 linetype 1 lc rgb 'green', \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/CHARMMnaclCONSchange.dat" using 1:4:5 with yerrorbars notitle  pt 5 lt 1 lc rgb 'green', "" using 1:4 with lines notitle linetype 1 lc rgb 'green', \
     "../../../lipid_ionINTERACTION/scratch/DPPCberger/DPPCnacl/NACLconschange.dat" using 1:2 title 'DPPC+NaCl, Berger, T=323K'  with linespoint linetype 1 pt 7, \
     "../../../lipid_ionINTERACTION/scratch/DPPCberger/DPPCnacl/NACLconschange.dat" using 1:3 notitle with linespoints  linetype 1 pt 7

set label at screen 0.84,screen 0.8 "Density profiles of ions and lipids"
set key at screen 1.3,screen 0.78 maxcols 2 maxrows 5
#set yrange [-0.11:0.05]
set yrange [0:0.79]
set xrange [-5:5]
set ytic 0.2
#set ylabel "{/Symbol b}  {/Symbol D}S_{CH}"
set origin 0.7,0.35
set size 0.65, 0.35
set xtics format " " 
set ylabel "Number Density"
set label at screen 0.95,screen 0.6 "Berger (340 mM NaCl)"
#set yrange [0.01:0.16]
plot  "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/44na/LIPIDdensity.xvg" using 1:3 title 'Na' with lines linetype 1 lw 1, \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/44na/LIPIDdensity.xvg" using 1:4 title 'Cl' with lines linetype 1 lw 1 lc rgb 'green', \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/44na/LIPIDdensity.xvg" using 1:($2/100) title 'POPC' with lines linetype 1 lc rgb 'black' lw 3

set ytic 0.01
set yrange [-0.08:0.01]
set xrange [-1:1050]
#set yrange [-0.015:0.11]
set ylabel "{/Symbol a}  {/Symbol D}S_{CH}"
set xlabel "[NaCl] (mM)"
set origin 0,0
set size 0.65, 0.35
plot "../../../lipid_ionINTERACTION/Data/DPPC/NaCl/EXP-Akutsu1981-DPPC-NaClchange.dat"  using 1:($3*0.00784) notitle with linespoints  linetype 1 pt 7 lc rgb 'black', \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER/BERGERnaclCONSchange.dat" using 1:6:7  with yerrorbars notitle pt 5 lt 1 lc rgb 'red', "" using 1:6 with lines notitle linetype 1 lc rgb 'red', \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/BERGER//BERGERnaclCONSchange.dat" using 1:8:9  with yerrorbars notitle pt 5 lt 1 lc rgb 'red', "" using 1:8 with lines notitle linetype 1 lc rgb 'red',\
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/CHARMMnaclCONSchange.dat" using 1:6:7  with yerrorbars notitle pt 5 lt 1 lc rgb 'green', "" using 1:6 with lines notitle linetype 1 lc rgb 'green', \
     "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/CHARMMnaclCONSchange.dat" using 1:8:9  with yerrorbars notitle pt 5 lt 1 lc rgb 'green', "" using 1:8 with lines notitle linetype 1 lc rgb 'green',\
      "../../../lipid_ionINTERACTION/scratch/DPPCberger/DPPCnacl/NACLconschange.dat" using 1:4 notitle  with linespoint linetype 1 pt 7, \
     "../../../lipid_ionINTERACTION/scratch/DPPCberger/DPPCnacl/NACLconschange.dat" using 1:5 notitle with linespoints  linetype 1 pt 7


set key at screen 1.3,screen 0.72 maxcols 2 maxrows 6
set yrange [0:0.79]
set ytic 0.2
set xrange [-5:5]
set xlabel "z (nm)"
set ylabel "Number Density"
set origin 0.7,0
set size 0.65, 0.35
set label at screen 0.99,screen 0.3 "CHARMM36"
set label at screen 1.19,screen 0.14 "350 mM" 
set label at screen 1.19,screen 0.21 "690 mM" 
set label at screen 1.19,screen 0.29 "950 mM" 
plot  "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/13na/LIPIDdensity.xvg" using 1:3 notitle with lines linetype 1 lw 1, \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/13na/LIPIDdensity.xvg" using 1:4 notitle with lines linetype 1 lw 1 lc rgb 'green', \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/13na/LIPIDdensity.xvg" using 1:($2/200) notitle with lines linetype 1 lc rgb 'black' lw 3,\
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/26na/LIPIDdensity.xvg" using 1:3 notitle  with lines linetype 1 lw 2,\
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/26na/LIPIDdensity.xvg" using 1:4 notitle with lines linetype 1 lw 2 lc rgb 'green', \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/26na/LIPIDdensity.xvg" using 1:($2/200) notitle with lines linetype 1 lc rgb 'black' lw 3,\
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/37na/LIPIDdensity.xvg" using 1:3 notitle with lines linetype 1 lw 3,\
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/37na/LIPIDdensity.xvg" using 1:4 notitle with lines linetype 1 lw 3 lc rgb 'green', \
      "../../../lipid_ionINTERACTION/Data/POPC/NaCl/CHARMM36/37na/LIPIDdensity.xvg" using 1:($2/200) notitle with lines linetype 1 lc rgb 'black' lw 3


unset multiplot

