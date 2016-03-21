set terminal eps enhanced monochrome
set output "a2.eps"
#set yrange [0:0.02]
#set xrange [0:3500]
set xlabel "1+{/Symbol g}^{-1}"
set ylabel "X/mm"
set title "362.a"
set grid
unset key
f(x)=a*x+b
fit f(x) "a.csv" u 14:12  via a, b
plot f(x), "a.csv" u 14:12:15:13 w xyerrorbars

