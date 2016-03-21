set terminal eps enhanced size 10,5
set output "e.eps"
set title "362.e/f/g"
set xrange [0:10]
set yrange [0:10]
set ylabel "Helligkeit/lux"
set xlabel "Spaltennummer"
set grid
plot "e1.csv" u 2:3:4 w yerrorbars title "Reihe 1e", "f1.csv" u 2:3:4 w yerrorbars title "Reihe 1f",  "g1.csv" u 2:3:4 w yerrorbars title "Reihe 1g", "e2.csv" u 2:3:4 w yerrorbars title "Reihe 2e", "f2.csv" u 2:3:4 w yerrorbars title "Reihe 2f",  "g2.csv" u 2:3:4 w yerrorbars title "Reihe 2g", "e3.csv" u 2:3:4 w yerrorbars title "Reihe 3e", "f3.csv" u 2:3:4 w yerrorbars title "Reihe 3f",  "g3.csv" u 2:3:4 w yerrorbars title "Reihe 3g", "e4.csv" u 2:3:4 w yerrorbars title "Reihe 4e", "f4.csv" u 2:3:4 w yerrorbars title "Reihe 4f",  "g4.csv" u 2:3:4 w yerrorbars title "Reihe 4g", "e5.csv" u 2:3:4 w yerrorbars title "Reihe 5e", "f5.csv" u 2:3:4 w yerrorbars title "Reihe 5f", "g5.csv" u 2:3:4 w yerrorbars title "Reihe 5g",
