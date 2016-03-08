set terminal eps enhanced monochrome
set output "370a.eps"
set yrange [0:10]
set xrange [-180:180]
set xlabel "{/Symbol j}/deg"
set ylabel "U/V"
set title "370.a"
set grid
unset key
f(x)=a*cos(x*2*pi/360)**2+b
fit f(x) "370a.csv" u 1:2  via a, b
plot f(x), "370a.csv" u 1:2:3:4 w xyerrorbars
