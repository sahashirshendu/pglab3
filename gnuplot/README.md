# A basic rundown of `gnuplot`

## Simple plot:
```plot sin(x)```

## Plot data file with 1st column along `x` and 2nd as `y`:
```plot 'data.txt' using 1:2```

## For `png` graph:
```bash
gnuplot plotpng.gnu
```
## For `png` graph:
```bash
gnuplot plotpdf.gnu
ps2pdf plot.ps
```
