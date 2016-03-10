set terminal eps enhanced monochrome
set output "372cI.eps"
set yrange [0:600]
set xrange [0:65]
set xlabel "r/cm"
set ylabel "{/Symbol j}F^{-1}/Wm^{-2}"
set title "372.c I"
set grid
unset key
f(x)=a/x**2-35
fit f(x) "cI.csv" u 1:5  via a
plot f(x), "cI.csv" u 1:5:3:6 w xyerrorbars
