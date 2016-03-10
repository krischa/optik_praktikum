set terminal eps enhanced monochrome
set output "b.eps"
#set yrange [0:0.05]
set xrange [0:1E+10]
set xlabel "T^4-T_0^4/K^4"
set ylabel "{/Symbol j}F^{-2}/Wm^{-2}"
set title "372.b"
set grid
set key
f(x)=a*x+0.001810344827586207
g(x)=b*x+0.001810344827586207
h(x)=c*x+0.001810344827586207
i(x)=d*x+0.001810344827586207
fit f(x) "b_weiss.csv" u 3:5  via a
fit g(x) "b_schwarz.csv" u 3:5 via b
fit h(x) "b.csv" u 11:13 via c
#fit j(x) "b.csv" u 15:17 via d
plot f(x) title "Weisse Seite", "b_weiss.csv" u 3:5:7 w yerrorbars, g(x) title "Schwarze Seite", "b_schwarz.csv" u 3:5:7 w yerrorbars, h(x) title "Stumpfe Seite", "b_stumpf.csv" u 3:5:7 w yerrorbars#, j(x) title "Polierte Seite", "b.csv" u 15:17:18:19 w xyerrorbars
