sudo su
cd /opt/DSEngine
./configure.sh -s $1:8000 -l n
./engine.sh start
