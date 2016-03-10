set terminal eps enhanced monochrome
set output "370b.eps"
#set yrange [0:10]
#set xrange []
set xlabel "{/Symbol l}^{-2}/nm^{-2}"
set ylabel "{/Symbol j}/deg"
set title "370.b"
set grid
unset key
f(x)=a+b*x
fit f(x) "370b.csv" u 3:1  via a, b
plot f(x), "370b.csv" u 3:1:4 w yerrorbars
