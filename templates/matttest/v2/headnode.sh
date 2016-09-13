sudo su
old=localhost
new=`hostname -f`
export JAVA_HOME=/opt/java/jdk1.7.0_79; export PATH=$JAVA_HOME/bin:$PATH
cd /opt/datasynapse
./server.sh stop
sed -i "s/${old}/${new}/g" /opt/datasynapse/webapps/livecluster/WEB-INF/config/driver.properties
sed -i "s/${old}/${new}/g" /opt/datasynapse/webapps/livecluster/WEB-INF/config/Config.xml.unix
sed -i "s/${old}/${new}/g" /opt/datasynapse/webapps/livecluster/WEB-INF/config/installation.properties
sed -i "s/${old}/${new}/g" /opt/datasynapse/webapps/livecluster/WEB-INF/driverInstall/driver.properties
./server.sh start
shutdown -r +1 &
