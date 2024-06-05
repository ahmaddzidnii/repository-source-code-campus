# Buat objek simulator
set ns [new Simulator]

# Warna untuk visualisasi
$ns color 1 Red
$ns color 2 Blue

# Buka file untuk menyimpan trace
set nf [open tcp-sack-red.nam w]
$ns namtrace-all $nf
set nd [open tcp-sack-red.tr w]
$ns trace-all $nd

# Prosedur finish untuk menggambar grafik antrian
proc finish {} {
    global tchan_
    set awkCode {
        {
            if ($1 == "Q" && NF>2) {
                print $2, $3 >> "temp.q";
                set end $2
            }
            else if ($1 == "a" && NF>2)
                print $2, $3 >> "temp.a";
        }
    }
    set f [open temp.queue w]
    puts $f "TitleText: red"
    puts $f "Device: Postscript"
    if { [info exists tchan_] } {
        close $tchan_
    }
    exec rm -f temp.q temp.a
    exec touch temp.a temp.q
    exec awk $awkCode all.q
    puts $f \"queue
    exec cat temp.q >@ $f
    puts $f \n\"ave_queue
    exec cat temp.a >@ $f
    close $f
    exit 0
}

# Buat node-node
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]

# Buat link dengan kapasitas dan mekanisme antrian
$ns duplex-link $n0 $n2 10Mb 10ms DropTail
$ns duplex-link $n1 $n2 10Mb 10ms DropTail
$ns duplex-link $n2 $n3 2Mb 5ms RED
$ns duplex-link $n3 $n4 5Mb 10ms DropTail
$ns duplex-link $n3 $n5 5Mb 10ms DropTail

# Orientasi node
$ns duplex-link-op $n0 $n2 orient right-down
$ns duplex-link-op $n1 $n2 orient right-up
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n3 $n4 orient right-up
$ns duplex-link-op $n3 $n5 orient right-down

# Batasan ukuran antrian
$ns queue-limit $n2 $n3 10
$ns duplex-link-op $n2 $n3 queuePos 0.5

# Setting antrian RED
set redq [[$ns link $n2 $n3] queue]
set tchan_ [open all.q w]
$redq set bytes_ false
$redq set queue_in_bytes_ false
$redq trace curq_
$redq trace ave_
$redq attach $tchan_
$redq set thresh_ 25
$redq set maxthresh_ 60
$redq set q_weight_ 0.002
$redq set linterm_ 10

# Agent TCP SACK dan aplikasi FTP
# TCP 1
set tcp [new Agent/TCP/Sack1]
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

# TCP 2
set tcp2 [new Agent/TCP/Sack1]
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

# set outfile [open "cwnd_tcp1.xg" w]
# $ns at 0.0 "plotWindow $tcp $outfile"
# set outfile [open "cwnd_tcp2.xg" w]
# $ns at 0.0 "plotWindow $tcp2 $outfile"

# Mulai simulasi
$ns at 0.1 "$ftp start"
$ns at 0.1 "$ftp2 start"
$ns at 300.1 "$ftp stop"
$ns at 500.1 "$ftp2 stop"
$ns at 502.0 "finish"
$ns run
