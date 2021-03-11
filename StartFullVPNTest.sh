# Connects and runs multiple scripts created to find the best Windscribe server for a series of mining servers, currently: Ethermine, Mining Pool Hub, Mining Rig Rentals, and Hive On pool
# written by FamousM1
# make sure you are logged into windscribe-cli before running this
# do this by typing "sudo windscribe login"
# Tries all of Windscribe's Pro and Free servers


#checks if file exists and if it does not then it downloads the scripts
#run a ping and speed test on stock internet, no VPN
FILE=./novpnspeed.sh
if [ ! -f "$FILE" ]; then
    wget https://github.com/famousm1/windscribe-MRR-pingtest/raw/main/novpnspeed.sh
fi

sleep 10

#run a speed test on all VPNs
FILE=./bestvpnspeedtest.sh
if [ ! -f "$FILE" ]; then
wget https://github.com/famousm1/windscribe-MRR-pingtest/raw/main/bestvpnspeedtest.sh
fi
sleep 10

#run a ping test on Ethermine with all VPNs
FILE=./vpnethermineping.sh
if [ ! -f "$FILE" ]; then
wget https://github.com/famousm1/windscribe-MRR-pingtest/raw/main/vpnethermineping.sh
fi
sleep 10

#run a ping test on HiveOn with all VPNs
FILE=./hiveonvpnping.sh
if [ ! -f "$FILE" ]; then
wget https://github.com/famousm1/windscribe-MRR-pingtest/raw/main/hiveonvpnping.sh
fi
sleep 10

#run a ping test on MiningRigRentals with all VPNs
FILE=./vpnpingmrr.sh
if [ ! -f "$FILE" ]; then
wget https://raw.githubusercontent.com/famousm1/windscribe-MRR-pingtest/main/vpnpingmrr.sh
fi
sleep 10

chmod 777 vpnpingmrr.sh
chmod 777 hiveonvpnping.sh
chmod 777 vpnethermineping.sh
chmod 777 bestvpnspeedtest.sh
chmod 777 novpnspeed.sh

./vpnpingmrr.sh
./hiveonvpnping.sh
./vpnethermineping.sh
./bestvpnspeedtest.sh
./novpnspeed.sh
