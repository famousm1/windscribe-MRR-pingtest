sudo windscribe disconnect
sleep 10

ping us-east01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping us-central01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping us-west01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping us-south01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping us-nw01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-de02.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-de01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-ru01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-uk01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping jp-01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping ca-tor01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping au-01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping ap-01.miningrigrentals.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping us-east.ethash-hub.miningpoolhub.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping europe.ethash-hub.miningpoolhub.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping asia.ethash-hub.miningpoolhub.com -c 20 | tee -a stocklatency.txt 
sleep 10

ping aspac1-eth.hiveon.net -c 20 | tee -a stocklatency.txt 
sleep 10

ping naw-eth.hiveon.net -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu-eth.hiveon.net -c 20 | tee -a stocklatency.txt 
sleep 10

ping ru-eth.hiveon.net -c 20 | tee -a stocklatency.txt 
sleep 10

ping asia1.ethermine.org -c 20 | tee -a stocklatency.txt 
sleep 10

ping eu1.ethermine.org -c 20 | tee -a stocklatency.txt 
sleep 10

ping us1.ethermine.org -c 20 | tee -a stocklatency.txt 
sleep 10

ping us2.ethermine.org -c 20 | tee -a stocklatency.txt 
sleep 10

wget https://github.com/showwin/speedtest-go/releases/download/v1.1.1/speedtest-go_1.1.1_Linux_x86_64.tar.gz
tar -xvf speedtest-go_1.1.1_Linux_x86_64.tar.gz

sleep 10
./speedtest-go | tee -a stocklatency.txt
