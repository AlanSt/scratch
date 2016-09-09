sudo su
dns=`hostname -d`
director=${1}.${dns}
cd /opt/DSEngine
./configure.sh -s ${director}:8000 -l n
./engine.sh start
