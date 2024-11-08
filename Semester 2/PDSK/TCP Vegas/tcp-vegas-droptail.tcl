set ns [new Simulator]
$ns color 1 Red
$ns color 2 Blue
set nf [open tcp-vegas-droptail.nam w]
$ns namtrace-all $nf
set nd [open tcp-vegas-droptail.tr w]
$ns trace-all $nd

proc finish {} {
    global ns nf
    $ns flush-trace
    close $nf
    exit 0
}

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]

#kapasitas link dan parameter
$ns duplex-link $n0 $n2 10Mb 10ms DropTail
$ns duplex-link $n1 $n2 10Mb 10ms DropTail
$ns duplex-link $n2 $n3 2Mb 5ms DropTail
$ns duplex-link $n3 $n4 5Mb 10ms DropTail
$ns duplex-link $n3 $n5 5Mb 10ms DropTail

#orientasi/letak node
$ns duplex-link-op $n0 $n2 orient right-down
$ns duplex-link-op $n1 $n2 orient right-up
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n3 $n4 orient right-up
$ns duplex-link-op $n3 $n5 orient right-down

#limitasi queue
$ns queue-limit $n2 $n3 20
$ns duplex-link-op $n2 $n3 queuePos 0.5

#TCP 1 Source agent dan aplikasi || sink
set tcp [new Agent/TCP/Vegas]
$tcp set class_ 1
$ns attach-agent $n0 $tcp
set sink [new Agent/TCPSink]
$ns attach-agent $n4 $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ftp set type_ FTP
$tcp set window_ 1000

#tcp trace
$tcp attach $nd
$tcp trace vegas_alpha_
$tcp trace vegas_beta_

#TCP 2 Source agent dan aplikasi || sink
set tcp2 [new Agent/TCP/Vegas]
$tcp2 set class_ 2
$ns attach-agent $n1 $tcp2
set sink2 [new Agent/TCPSink]
$ns attach-agent $n5 $sink2
$ns connect $tcp2 $sink2
set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ftp2 set type_ FTP
$tcp2 set window_ 1000

#tcp trace
$tcp2 attach $nd
$tcp2 trace vegas_alpha_
$tcp2 trace vegas_beta_

set qfile [$ns monitor-queue $n2 $n3 [open queue.tr w] 0.031131312]
[$ns link $n2 $n3] queue-sample-timeout;

$ns at 0.1 "$ftp start"
$ns at 5.0 "$ftp2 start"
$ns at 300.0 "$ftp stop"
$ns at 300 "$ftp2 stop"
$ns at 300.1 "finish"
$ns run
