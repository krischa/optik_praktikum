set terminal eps enhanced monochrome size 5,2
set output "b.eps"
set yrange [0:0.02]
set xrange [0:3500]
set xlabel "D^{-1}/m^{-1}"
set ylabel "{/Symbol a}/rad"
set title "364.h
set grid
unset key
f(x)=a*x+b
fit f(x) "h.csv" u 1:5  via a, b
plot f(x), "h.csv" u 1:5:6 w yerrorbars
