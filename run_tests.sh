# !/bin/bash
cd pox/pox/ext

# The fault tolerance and aggregate throughput tests
python fill_command.py 4 1
sudo mn -c

sudo rm -f h00_h43_iperf.txt
sudo rm -f tcpdump_s10.txt
sudo rm -rf iperfs
mkdir iperfs
sudo python build_topology.py 4 1 1 iperfs 100 250
sudo python build_topology.py 4 1 2 iperfs 100 250
sudo python plot_throughput.py -f h00_h43_iperf.txt -o ../../../throughput.png
sudo python plot_alternative_throughput.py -f tcpdump_s10.txt -o ../../../alternative-throughput.png
sudo python plot_aggregate_throughput.py -d ./iperfs/ -o ../../../aggregate_throughput.png -y 2500

# Average Throughput tests for 4 1 topology
sudo rm -rf iperfs_4_1
mkdir iperfs_4_1
sudo python build_topology.py 4 1 3 iperfs_4_1 100 250
sudo python plot_average_throughput.py -d ./iperfs_4_1/ -o ../../../average_throughput_4_1.png -y 50

sudo rm -rf iperfs_4_1_lbw
mkdir iperfs_4_1_lbw
sudo python build_topology.py 4 1 3 iperfs_4_1_lbw 10 25
sudo python plot_average_throughput.py -d ./iperfs_4_1_lbw/ -o ../../../average_throughput_4_1_lbw.png -y 5

# Average Throughput tests for 2 1 topology
python fill_command.py 2 1
sudo mn -c

sudo rm -rf iperfs_2_1
mkdir iperfs_2_1
sudo python build_topology.py 2 1 3 iperfs_2_1 100 250
sudo python plot_average_throughput.py -d ./iperfs_2_1/ -o ../../../average_throughput_2_1.png -y 50

sudo rm -rf iperfs_2_1_lbw
mkdir iperfs_2_1_lbw
sudo python build_topology.py 2 1 3 iperfs_2_1_lbw 10 25
sudo python plot_average_throughput.py -d ./iperfs_2_1_lbw/ -o ../../../average_throughput_2_1_lbw.png -y 5

# Average Throughput tests for 3 1 topology
python fill_command.py 3 1
sudo mn -c

sudo rm -rf iperfs_3_1
mkdir iperfs_3_1
sudo python build_topology.py 3 1 3 iperfs_3_1 100 250
sudo python plot_average_throughput.py -d ./iperfs_3_1/ -o ../../../average_throughput_3_1.png -y 50

sudo rm -rf iperfs_3_1_lbw
mkdir iperfs_3_1_lbw
sudo python build_topology.py 3 1 3 iperfs_3_1_lbw 10 25
sudo python plot_average_throughput.py -d ./iperfs_3_1_lbw/ -o ../../../average_throughput_3_1_lbw.png -y 5

# Average Throughput tests for 5 1 topology
python fill_command.py 5 1
sudo mn -c

sudo rm -rf iperfs_5_1
mkdir iperfs_5_1
sudo python build_topology.py 5 1 3 iperfs_5_1 100 250
sudo python plot_average_throughput.py -d ./iperfs_5_1/ -o ../../../average_throughput_5_1.png -y 50

sudo rm -rf iperfs_5_1_lbw
mkdir iperfs_5_1_lbw
sudo python build_topology.py 5 1 3 iperfs_5_1_lbw 10 25
sudo python plot_average_throughput.py -d ./iperfs_5_1_lbw/ -o ../../../average_throughput_5_1_lbw.png -y 5

# Average Throughput tests for 6 1 topology
python fill_command.py 6 1
sudo mn -c

sudo rm -rf iperfs_6_1
mkdir iperfs_6_1
sudo python build_topology.py 6 1 3 iperfs_6_1 100 250
sudo python plot_average_throughput.py -d ./iperfs_6_1/ -o ../../../average_throughput_6_1.png -y 50

sudo rm -rf iperfs_6_1_lbw
mkdir iperfs_6_1_lbw
sudo python build_topology.py 6 1 3 iperfs_6_1_lbw 10 25
sudo python plot_average_throughput.py -d ./iperfs_6_1_lbw/ -o ../../../average_throughput_6_1_lbw.png -y 5
cd ../../../
