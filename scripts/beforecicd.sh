#!/bin/bash

sudo su -c "apt-get install unzip"
sudo su -c "apt-get update"
sudo su -c "service codedeploy-agent start"
sudo su -c "cd /opt/tomcat9/bin;
	    ./startup.sh"

sudo su -c "aws s3 ls s3://jenkins-war-upload --region ap-south-1"
sudo su -c "aws s3 cp s3://jenkins-war-upload/#44-1111953917755282533.zip /home/ubuntu/fundooPay.zip --region ap-south-1"

sudo su -c "mkdir /home/ubuntu/fundooPay"
sudo su -c "unzip -o /home/ubuntu/fundooPay.zip -d /home/ubuntu/fundooPay"
sudo su -c "cd /home/ubuntu/fundooPay/target;
	    mv springboot-helloworld-0.0.1-SNAPSHOT.war /home/ubuntu/hello.war;
	    cp --recursive /home/ubuntu/hello.war /opt/tomcat9/webapps/"

