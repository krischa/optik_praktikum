set terminal eps enhanced
set output "370a2.eps"
set yrange [0:10]
set xrange [-90:90]
set xlabel "{/Symbol j}/deg"
set ylabel "U/V"
set title "370.a Polarisator bei 90°"
set grid
unset key
f(x)=a*cos((x+90)*2*pi/360)**2+b
fit f(x) "370a.csv" u 3:4  via a, b
plot f(x), "370a.csv" u 3:4:5:6 w xyerrorbars
