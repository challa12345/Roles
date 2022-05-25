#!/bin/bin
HOSTNAME=`hostname`

if [ "$HOSTNAME" = "ip-172.31.47.31" -o "$HOSTNAME" = "ip-172.31.39.213" ]; then
        ENV="dev"
        DEPLOY_PATH="/usr/share/tomcat/webapps/"
else
        echo "server not found"
fi

cd /tmp
wget https://tomcat.apache.org/tomcat-5.5-doc/appdev/sample/sample.war
mv sample.war ram.war
sudo chmod 777 ram.war
sudo cp /tmp/ram.war $DEPLOY_PATH
