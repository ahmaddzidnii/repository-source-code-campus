# Buat objek simulator
set ns [new Simulator]

# Warna untuk visualisasi
$ns color 1 Red
$ns color 2 Blue

# Buka file untuk menyimpan trace
set nf [open tcp-sack-droptail.nam w]
$ns namtrace-all $nf
set nd [open tcp-sack-droptail.tr w]
$ns trace-all $nd

# Prosedur finish
proc finish {} {
    global ns nf
    $ns flush-trace
    close $nf
    exit 0
}

# Buat node-node
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]

# Buat link dengan kapasitas dan mekanisme antrian DropTail
$ns duplex-link $n0 $n2 10Mb 10ms DropTail
$ns duplex-link $n1 $n2 10Mb 10ms DropTail
$ns duplex-link $n2 $n3 2Mb 5ms DropTail
$ns duplex-link $n3 $n4 5Mb 10ms DropTail
$ns duplex-link $n3 $n5 5Mb 10ms DropTail

# Orientasi node
$ns duplex-link-op $n0 $n2 orient right-down
$ns duplex-link-op $n1 $n2 orient right-up
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n3 $n4 orient right-up
$ns duplex-link-op $n3 $n5 orient right-down

# Limitasi ukuran antrian
$ns queue-limit $n2 $n3 20
$ns duplex-link-op $n2 $n3 queuePos 0.5

# Agent TCP SACK 1 dan aplikasi FTP
set tcp [new Agent/TCP/Sack]
$tcp set class_ 1
$ns attach-agent $n0 $tcp
set sink [new Agent/TCPSink]
$ns attach-agent $n4 $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ftp set type_ FTP
$tcp set window_ 1000

# Trace TCP 1
$tcp attach $nd
$tcp tracevar cwnd_

# Agent TCP SACK 2 dan aplikasi FTP
set tcp2 [new Agent/TCP/Sack]
$tcp2 set class_ 2
$ns attach-agent $n1 $tcp2
set sink2 [new Agent/TCPSink]
$ns attach-agent $n5 $sink2
$ns connect $tcp2 $sink2
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ftp2 set type_ FTP
$tcp2 set window_ 1000

# Trace TCP 2
$tcp2 attach $nd
$tcp2 tracevar cwnd_

# Prosedur untuk melacak window size
proc plotWindow {tcpSource outfile} {
    global ns
    set now [$ns now]
    set cwnd [$tcpSource set cwnd_]
    puts $outfile "$now $cwnd"
    $ns at [expr $now+0.1] "plotWindow $tcpSource $outfile"
}

# Komentar baris berikut jika tidak ingin melacak window size
# set outfile [open "cwnd_tcp1.xg" w]
# $ns at 0.0 "plotWindow $tcp $outfile"
# set outfile [open "cwnd_tcp2.xg" w]
# $ns at 0.0 "plotWindow $tcp2 $outfile"

# Monitor antrian
set qfile [$ns monitor-queue $n2 $n3 [open queue.tr w] 0.031131312]
[$ns link $n2 $n3] queue-sample-timeout;

# Mulai simulasi
$ns at 0.1 "$ftp start"
$ns at 5.0 "$ftp2 start"
$ns at 300.0 "$ftp stop"
$ns at 300.0 "$ftp2 stop"
$ns at 300.1 "finish"
$ns run
