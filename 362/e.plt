set terminal eps enhanced size 10,5
set output "e.eps"
set title "362.e/f"
set xrange [0:10]
set yrange [0:10]
set ylabel "Helligkeit/lux"
set xlabel "Spaltennummer"
set grid
plot "e1.csv" u 2:3:4 w yerrorbars title "Reihe 1", "e2.csv" u 2:3:4 w yerrorbars title "Reihe 2", "e3.csv" u 2:3:4 w yerrorbars title "Reihe 3", "e4.csv" u 2:3:4 w yerrorbars title "Reihe 4", "e5.csv" u 2:3:4 w yerrorbars title "Reihe 5"
