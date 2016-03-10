set terminal eps enhanced monochrome
set output "cII.eps"
set yrange [2:7]
set xrange [6:8]
set xlabel "T/K"
set ylabel "{/Symbol j}F^{-1}/Wm^{-2}"
set title "372.c II"
set grid
#set logscale xy
unset key
f(x)=a*x+b
fit f(x) "cII.csv" u (log($8)):(log($4))  via a,b
plot "cII.csv" u (log($8)):(log($4)):12:14 w xyerrorbars, f(x)
print a, b
