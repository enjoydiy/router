#!/bin/bash
cd /root/route
linux = 1 && python chnroutes.py -p linux
zip -q -r linux.zip i*
win = 1 && python chnroutes.py -p win
zip -q -r windows.zip v*
openvpn = 1 && python chnroutes.py -p openvpn
zip -q -r openvpn.zip rou*
git add linux.zip ip*
git commit -m "routers for linux $linux `date +%Y-%m-%d`"
git add windows.zip vp*
git commit -m "routes for windows $win  `date +%Y-%m-%d`"
git add openvpn.zip route*
git commit -m "routes for openvpn $openvpn `date +%Y-%m-%d`"
git push origin master
