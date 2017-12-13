# Reproducing our results

Complete the following in an Linux environment.

Install mininet instructions on: http://www.brianlinkletter.com/how-to-install-mininet-sdn-network-simulator/

Install matplotlib (run sudo apt-get install python-matplotlib)

Clone our repository (run git clone https://github.com/onlylukejohnson/DCell-repeat-experiment.git)

Navigate into the repository (run cd DCell-repeat-experiment)
 In the home directory of the repository is a script called run_tests.sh. This script will run both experiments and plot the results. Note that in order to run this experiment, you need root access for the instance. (./run_experiment.sh)

The script will generate 12 figures into the repository’s home directory. THIS WILL TAKE A LONG TIME (like 3.5 hours). You may want to extend the sudo timeout time on your linux system to run this code. The figures are:

aggregate_throughput.png (this is a comparison to the paper)
throughput.png (this compares to the original path throughput)
alternative_throughput.png (this shows the throughput of the alternative path when the original is unavailable)
Then the rest are the average throughput for the network and figure with lbw are at a 1% scaled bandwidth and payload (as opposed to 10%) being sent between server pairs using topologies k = 1 and n between 2 and 6.
