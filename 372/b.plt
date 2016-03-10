set terminal eps enhanced monochrome size 10,5
set output "b.eps"
set yrange [0:40]
set xrange [0:1E+10]
set xlabel "T^4-T_0^4/K^4"
set ylabel "{/Symbol j}F^{-1}/Wm^{-2}"
set title "372.b"
set grid
set key center top
f(x)=a*x+A
g(x)=b*x+0.1
h(x)=c*x+C
j(x)=d*x+D
k(x)=5.6704e-8*x
fit f(x) "b_weiss.csv" u 3:5  via a,A
fit g(x) "b_schwarz.csv" u 3:5 via b
fit h(x) "b_stumpf.csv" u 3:5 via c,C
fit j(x) "b_poliert.csv" u 3:5 via d,D
plot f(x) title "Weisse Seite", "b_weiss.csv" u 3:5:7 w yerrorbars title "Weisse Seite", g(x) title "Schwarze Seite", "b_schwarz.csv" u 3:5:7 w yerrorbars title "Schwarze Seite", h(x) title "Stumpfe Seite", "b_stumpf.csv" u 3:5 title "Stumpfe Seite", j(x) title "Polierte Seite", "b_poliert.csv" u 3:5:7 w yerrorbars title "Polierte Seite", k(x) title "Schwarzkörper"
