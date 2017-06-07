#!/bin/sh

while true
do
#to picture
sleep 1
input swipe 250 250 500 500
sleep 2
echo 0 135 230 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 135 230 0 > /proc/tsc/tp_fake_touch
sleep 3

#take a picture
echo 0 963 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 963 274 0 > /proc/tsc/tp_fake_touch
sleep 1
echo 0 963 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 963 274 0 > /proc/tsc/tp_fake_touch
sleep 1

#to video
input swipe 250 250 500 500
sleep 2
echo 0 127 327 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 127 327 0 > /proc/tsc/tp_fake_touch
sleep 3

#record video start
echo 0 963 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 963 274 0 > /proc/tsc/tp_fake_touch
sleep 2
#take a picture
echo 0 514 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 514 274 0 > /proc/tsc/tp_fake_touch
sleep 1
#take a picture
echo 0 514 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 514 274 0 > /proc/tsc/tp_fake_touch
sleep 1
#take a picture
echo 0 514 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 514 274 0 > /proc/tsc/tp_fake_touch
sleep 1
#take a picture
echo 0 514 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 514 274 0 > /proc/tsc/tp_fake_touch
sleep 2
#record video end
echo 0 963 274 50 > /proc/tsc/tp_fake_touch
usleep 150000
echo 0 963 274 0 > /proc/tsc/tp_fake_touch

done
