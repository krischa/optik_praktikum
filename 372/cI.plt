set terminal eps enhanced monochrome
set output "372cI.eps"
set yrange [0:0.6]
#set xrange []
set xlabel "U/mV"
set ylabel "{/Symbol j}F^{-2}/Wm^{-2}"
set title "372.c I"
set grid
unset key
f(x)=a*x+0.001810344827586207
fit f(x) "cI.csv" u 2:5  via a
plot f(x), "cI.csv" u 2:5:4:6 w xyerrorbars
