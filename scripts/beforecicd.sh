#!/bin/bash

sudo su -c "apt-get install unzip"
sudo su -c "apt-get update"
sudo su -c "service codedeploy-agent start"
sudo su -c "cd /opt/tomcat9/bin;
	    ./startup.sh"

sudo su -c "aws s3 ls s3://jenkins-war-upload --region ap-south-1"
sudo su -c "aws s3 cp s3://jenkins-war-upload/#18-8891273898490606592.zip /home/ubuntu/fundooPay.zip --region ap-south-1"


