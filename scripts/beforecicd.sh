#!/bin/bash

sudo su -c "apt-get install unzip"
sudo su -c "apt-get update"
sudo su -c "service codedeploy-agent start"
sudo su -c "cd /opt/tomcat9/bin;
	    ./startup.sh"

aws s3 cp s3://jenkins-war-upload/#18-8891273898490606592.zip fundooPay.zip


