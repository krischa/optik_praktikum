set terminal eps enhanced monochrome
set output "370c.eps"
set yrange [0:90]
set xrange [0:6]
set xlabel "c/mol l^{-1}"
set ylabel "{/Symbol j}/deg"
set title "370.c"
set grid
unset key
f(x)=a*x
fit f(x) "370c.csv" u 2:1  via a
plot f(x), "370c.csv" u 2:1:3 w yerrorbars
