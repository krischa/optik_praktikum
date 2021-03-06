set terminal postscript enhanced monochrome
set output "e.eps"
#set yrange [0:20]
#set xrange [0:10]
set ylabel "n"
set xlabel "{/Symbol l}^{-2}/nm^{-2}"
set title "366.e"
set grid
unset key
f(x)=a*x+1.59
fit f(x) "e.csv" u 7:5  via a
plot f(x), "e.csv" u 7:5:6 w yerrorbars
