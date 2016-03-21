set terminal eps enhanced monochrome
set output "c.eps"
#set yrange [0:20]
#set xrange [0:10]
set xlabel "{/Symbol j}/deg"
set ylabel "{/Symbol l}/nm"
set title "368.c"
set grid
unset key
f(x)=a+b/x+c/x**2
fit f(x) "c.csv" u 1:2  via a,b,c
plot f(x), "c.csv" u 1:2:3 w xerrorbars
