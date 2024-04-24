wget  https://dl.qubicmine.pro/QubicMine-linux.zip
unzip QubicMine-linux.zip
rm qubicmine.json
wget https://raw.githubusercontent.com/testqb004/test/main/qubicmine.json
 /usr/sbin/sysctl -w vm.nr_hugepages=1320 
./qubic-pool-miner
