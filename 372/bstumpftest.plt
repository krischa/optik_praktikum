set terminal eps enhanced monochrome
set output "btest.eps"
#set yrange [0:0.05]
set xrange [0:1E+10]
set xlabel "T^4-T_0^4/K^4"
set ylabel "{/Symbol j}F^{-2}/Wm^{-2}"
set title "372.b"
set grid
set key
plot "b_stumpf.csv" u 3:5:7 w yerrorbars
