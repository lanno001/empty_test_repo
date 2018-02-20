set terminal png tiny size 800,800
set output "/mnt/nexenta/lanno001/nobackup/int_ab_20180220/analyses/mummer/images/minimap2_miniasm.png"
set title "minimap2_miniasm"
set size 1,1
set grid
unset key
set border 15
set tics scale 0
set xlabel "NC_000913.3"
set ylabel "utg000001c"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
if(GPVAL_VERSION < 5) { set mouse clipboardformat "[%.0f, %.0f]" }
set xrange [1:4641652]
set yrange [1:4375901]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "/mnt/nexenta/lanno001/nobackup/int_ab_20180220/analyses/mummer/images/minimap2_miniasm.fplot" title "FWD" w lp ls 1, \
 "/mnt/nexenta/lanno001/nobackup/int_ab_20180220/analyses/mummer/images/minimap2_miniasm.rplot" title "REV" w lp ls 2
