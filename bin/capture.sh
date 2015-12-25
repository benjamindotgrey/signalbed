#!/bin/bash

# Define global start time
STARTTIME=`date +%s`

# Define home directory
HOMEDIR='/home/grey/repo/signalbed'
#HOMEDIR='/home/grey/'

# Define target directory
TARGETDIR='log'

# Define target list
LOOPBACK='127.0.0.1'
LOCALHOST='192.168.2.221'
GATEWAY0='192.168.0.1'
GATEWAY1='192.168.1.1'
GATEWAY1='192.168.2.1'
RANGE0='192.168.0.9'
RANGE1='192.168.0.12'
RANGE2='192.168.0.13'
RANGE3='192.168.1.166'
RANGE4='192.168.1.72'
BRODCAST0='192.168.0.255'
BRODCAST1='192.168.1.255'
NETWORK0='192.168.0.0'
NETWORK1='192.168.1.0'

# Define arguments
DELAYS=(
	'0.2' 
	'0.201'
	'0.202'
	'0.203'
	'0.204'
	'0.205'
	'0.206'
	'0.207'
	'0.208'
	'0.209'
	'0.21'
	'0.211'
	'0.212'
	'0.213'
	'0.214'
	'0.215'
	'0.216'
	'0.217'
	'0.218'
	'0.219'
	'0.22'
	'0.23'
	'0.24'
	'0.25'
	'0.26'
	'0.27'
	'0.28'
	'0.29'
	'0.3'
	'0.4'
	'0.5'
	'0.6'
	'0.7'
	'0.8'
	'0.9'
	'1.0'
	'1.1'
	'1.2'
	'1.3'
	'1.4'
	'1.5'
	'1.6'
	'1.7'
	'1.8'
	'1.9'
	'2.0'
	'2.1'
	'2.2'
	'2.3'
	'2.4'
	'2.5'
	'2.6'
	'2.7'
	'2.8'
	'2.9'
	'3.0'
	'3.1'
	)
PACKETSIZES=(
		'0.001' 
		'0.002' 
		'0.003' 
		'0.004' 
		'0.005' 
		'0.006' 
		'0.007' 
		'0.008' 
		'0.009' 
		'0.010' 
		'0.011' 
		'0.012' 
		'0.013' 
		'0.014' 
		'0.015' 
		'0.016' 
		'0.017' 
		'0.018' 
		'0.019' 
		'0.020' 
		'0.021' 
		'0.023' 
		'0.024' 
		'0.025' 
		'0.026' 
		'0.027' 
		'0.028' 
		'0.029' 
		'0.030' 
		'0.031' 
		'0.032' 
		'0.033' 
		'0.034' 
		'0.035' 
		'0.036' 
		'0.037' 
		'0.038' 
		'0.039' 
		'0.040' 
		'0.041' 
		'0.042' 
		'0.043' 
		'0.044' 
		'0.045' 
		'0.046' 
		'0.047' 
		'0.048' 
		'0.049' 
		'0.050' 
		'0.051' 
		'0.052' 
		'0.053' 
		'0.054' 
		'0.055'
		'0.056'
		'0.057'
		'0.058'
		'0.059'
		'0.060'
		'0.061'
		'0.062'
		'0.063'
		'0.064'
		'0.065'
		'0.066'
		'0.067'
		'0.068'
		'0.069'
		'0.070'
		'0.071'
		'0.072'
		'0.073'
		'0.074'
		'0.075'
		'0.076'
		'0.077'
		'0.078'
		'0.079'
		'0.080'
		'0.081'
		'0.082'
		'0.083'
		'0.084'
		'0.085'
		'0.086'
		'0.087'
		'0.088'
		'0.089'
		'0.090'
		'0.091'
		'0.092'
		'0.093'
		'0.094'
		'0.095'
		'0.096'
		'0.097'
		'0.098'
		'0.099'
		'0.1' 
		'0.2' 
		'0.3' 
		'0.4' 
		'0.5' 
		'0.6' 
		'0.7' 
		'0.8' 
		'0.9' 
		1 
		2 
		3 
		4 
		5 
		10 
		20 
		30 
		40 
		50 
		60 
		70 
		80 
		90 
		100 
	)
TARGETS=(
		$LOOPBACK 
		$LOCALHOST 
		$GATEWAY3
	)
		#$GATEWAY1 
		#$RANGE3
		#$GATEWAY0 
		#$RANGE0 
		#$RANGE1 
		#$RANGE2 

# Kill previous captures
pkill ping
pkill tcpdump

# Ping things
for t in ${TARGETS[@]}
do
	for p in ${PACKETSIZES[@]}
	do	
		for d in ${DELAYS[@]}
		do
			ping -i $d -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$d.ping &
		done
	done
done
		#ping -i $DELAY0 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY0.ping &
		#ping -i $DELAY1 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY1.ping &
		#ping -i $DELAY2 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY2.ping &
		#ping -i $DELAY3 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY3.ping &
		#ping -i $DELAY4 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY4.ping &
		#ping -i $DELAY5 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY5.ping &
		#ping -i $DELAY6 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY6.ping &
		#ping -i $DELAY7 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY7.ping &
		#ping -i $DELAY8 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY8.ping &
		#ping -i $DELAY9 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY9.ping &
		#ping -i $DELAY10 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY10.ping &
		#ping -i $DELAY11 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY11.ping &
		#ping -i $DELAY12 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY12.ping &
		#ping -i $DELAY13 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY13.ping &
		#ping -i $DELAY14 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY14.ping &
		#ping -i $DELAY15 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY15.ping &
		#ping -i $DELAY16 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY16.ping &
		#ping -i $DELAY17 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY17.ping &
		#ping -i $DELAY18 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY18.ping &
		#ping -i $DELAY19 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY19.ping &
		#ping -i $DELAY20 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY20.ping &
		#ping -i $DELAY21 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY21.ping &
		#ping -i $DELAY22 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY22.ping &
		#ping -i $DELAY23 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY23.ping &
		#ping -i $DELAY24 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY24.ping &
		#ping -i $DELAY25 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY25.ping &
		#ping -i $DELAY26 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY26.ping &
		#ping -i $DELAY27 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY27.ping &
		#ping -i $DELAY28 -s $p $t > $HOMEDIR/$TARGETDIR/$STARTTIME-$t-$p-$DELAY28.ping &
	#done
#done

# Start wireshark
tcpdump -i enp2s0 -w $HOMEDIR/$TARGETDIR/$STARTTIME.pngpcap 
	

# Ping loopback #
#ping -i $DELAY0 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE0-$DELAY8.ping &

# Ping localhost
#ping -i $DELAY0 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE0-$DELAY8.ping &

# Ping gateway 0 
#ping -i $DELAY0 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE0-$DELAY8.ping &

# Ping gateway 1
#ping -i $DELAY0 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE0-$DELAY8.ping &

# Ping range 0
#ping -i $DELAY0 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE0-$DELAY8.ping &

# Ping range 1
#ping -i $DELAY0 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE0-$DELAY7.ping &

# Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE0-$DELAY8.ping &

# Ping network 0 
#ping -i $DELAY0 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE0-$DELAY8.ping &

# Ping network 1 
#ping -i $DELAY0 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE0-$DELAY8.ping &

# Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE0-$DELAY8.ping &

# Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE0 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE0-$DELAY8.ping &
#
# Ping loopback #
#ping -i $DELAY0 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $LOOPBACK > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOOPBACK-$PACKETSIZE3-$DELAY8.ping &
#
## Ping localhost
#ping -i $DELAY0 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $LOCALHOST > $HOMEDIR/$TARGETDIR/$STARTTIME-$LOCALHOST-$PACKETSIZE3-$DELAY8.ping &
#
## Ping gateway 0 
#ping -i $DELAY0 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $GATEWAY0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY0-$PACKETSIZE3-$DELAY8.ping &
#
## Ping gateway 1
#ping -i $DELAY0 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $GATEWAY1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$GATEWAY1-$PACKETSIZE3-$DELAY8.ping &
#
## Ping range 0
#ping -i $DELAY0 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $RANGE0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE0-$PACKETSIZE3-$DELAY8.ping &
#
## Ping range 1
#ping -i $DELAY0 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $RANGE1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE1-$PACKETSIZE3-$DELAY7.ping &
#
## Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $RANGE2 > $HOMEDIR/$TARGETDIR/$STARTTIME-$RANGE2-$PACKETSIZE3-$DELAY8.ping &
#
## Ping network 0 
#ping -i $DELAY0 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK0-$PACKETSIZE3-$DELAY8.ping &
#
## Ping network 1 
#ping -i $DELAY0 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$NETWORK1-$PACKETSIZE3-$DELAY8.ping &
#
## Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 -b $NETWORK0 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST0-$PACKETSIZE3-$DELAY8.ping &
#
## Ping range 2 
#ping -i $DELAY0 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY0.ping &
#ping -i $DELAY1 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY1.ping &
#ping -i $DELAY2 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY2.ping &
#ping -i $DELAY3 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY3.ping &
#ping -i $DELAY4 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY4.ping &
#ping -i $DELAY5 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY5.ping &
#ping -i $DELAY6 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY6.ping &
#ping -i $DELAY7 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY7.ping &
#ping -i $DELAY8 -s $PACKETSIZE3 -b $NETWORK1 > $HOMEDIR/$TARGETDIR/$STARTTIME-$BROADCAST1-$PACKETSIZE3-$DELAY8.ping &
#

# Ping loop back
#ping -i 0.2 -s 512 127.0.0.1 > $HOMEDIR/tcpdump/$STARTTIME-127.0.0.1-512b-200ms.ping & 
#
## Ping localhost
#ping -i 0.2 -s 512 192.168.0.10 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.10-512b-200ms.ping & 
#
## Ping gateway 0
#ping -i 0.2 -s 512 192.168.0.1 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.1-512b-200ms.ping & 
#
## Ping gateway 1
#ping -i 0.2 -s 512 192.168.1.1 > $HOMEDIR/tcpdump/$STARTTIME-192.168.1.1-512b-200ms.ping & 
#
## Ping range devices
#ping -i 0.2 -s 512 192.168.0.9 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.9-512b-200ms.ping & 
#ping -i 0.2 -s 512 192.168.0.12 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.12-512b-200ms.ping & 
#ping -i 0.2 -s 512 192.168.0.13 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.13-512b-200ms.ping & 
#
## Ping broadcast
#ping -i 0.2 -s 512 -b 192.168.0.0 > $HOMEDIR/tcpdump/$STARTTIME-loopback-512b-200ms.ping & 
#ping -i 0.2 -s 512 -b 192.168.0.1 > $HOMEDIR/tcpdump/$STARTTIME-loopback-512b-200ms.ping & 
#
#### small ping ###
#
## Ping loop back
#ping -i 0.2 -s 5 127.0.0.1 > $HOMEDIR/tcpdump/$STARTTIME-127.0.0.1-5b-200ms.ping & 
#
## Ping localhost
#ping -i 0.2 -s 5 192.168.0.10 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.10-5b-200ms.ping & 
#
## Ping gateway 0
#ping -i 0.2 -s 5 192.168.0.1 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.1-5b-200ms.ping & 
#
## Ping gateway 1
#ping -i 0.2 -s 5 192.168.1.1 > $HOMEDIR/tcpdump/$STARTTIME-192.168.1.1-5b-200ms.ping & 
#
## Ping range devices
#ping -i 0.2 -s 5 192.168.0.9 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.9-5b-200ms.ping & 
#ping -i 0.2 -s 5 192.168.0.12 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.12-5b-200ms.ping & 
#ping -i 0.2 -s 5 192.168.0.13 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.13-5b-200ms.ping & 
#
## Ping broadcast
#ping -i 0.2 -s 5 -b 192.168.0.0 > $HOMEDIR/tcpdump/$STARTTIME-192.168.0.0-5b-200ms.ping & 
#ping -i 0.2 -s 5 -b 192.168.1.0 > $HOMEDIR/tcpdump/$STARTTIME-192.168.1.0-5b-200ms.ping & 
#

#tcpdump -i global -w /home/grey/tcpdump/$STARTTIME.pngpcap 

# Pipe output
#tail -f /home/grey/tcpdump/$STARTTIME.pngpcap
