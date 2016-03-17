set terminal eps enhanced monochrome
set output "d.eps"
set yrange [400:650]
set xrange [47.5:52.5]
set xlabel "{/Symbol j}/deg"
set ylabel "{/Symbol l}/nm"
set title "368.d"
set grid
unset key
f(x)=a+b/x+c/x**2
fit f(x) "c.csv" u 1:2  via a,b,c
set arrow from 48.33,400 to 48.33,650 nohead
set arrow from 48.75,400 to 48.75,650 nohead
set arrow from 49.62,400 to 49.62,650 nohead 
set arrow from 51.03,400 to 51.03,650 nohead
set arrow from 52.15,400 to 52.15,650 nohead
plot f(x)#, "d.csv" u 1:2:3 w xerrorbars
