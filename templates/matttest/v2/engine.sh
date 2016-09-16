sudo su
#dns=`hostname -d`
#director=${1}.${dns}
director=10.0.0.100
cd /opt/DSEngine
sudo ./configure.sh -s ${director}:8000 -l n
sudo ./engine.sh start
