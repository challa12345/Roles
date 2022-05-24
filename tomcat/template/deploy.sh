#!/bin/bin
HOSTNAME=`hostname`

if [ "$HOSTNAME" = "ip-172.31.27.40" -o "$HOSTNAME" = "ip-172.31.26.61" ]; then
        ENV="dev"
        DEPLOY_PATH="/usr/share/tomcat/webapps/"
else
        echo "server not found"
fi

cd /tmp
wget https://tomcat.apache.org/tomcat-5.5-doc/appdev/sample/sample.war
sudo cp *.war $DEPLOY_PATH
