sudo su
director=10.0.0.100
cd /opt/DSEngine
./configure.sh -s ${director}:8000 -l n
./engine.sh start
