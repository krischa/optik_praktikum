set terminal eps enhanced monochrome size 5,2
set output "b.eps"
set yrange [0:20]
set xrange [0:10]
set xlabel "m"
set ylabel "x_{m}/mm"
set title "368.b"
set grid
unset key
f(x)=a*x
fit f(x) "b.csv" u 1:2  via a
plot f(x), "b.csv" u 1:2:3 w yerrorbars
