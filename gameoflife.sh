#!/bin/bash

# Install Java, Maven, and Git
yum install java-1.8.0-openjdk.x86_64 maven git -y

# Change to the desired directory
cd /mnt/

# Download and extract Apache Tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.zip
unzip apache-tomcat-9.0.80.zip
rm -rf apache-tomcat-9.0.80.zip

# Navigate to the Tomcat directory
cd apache-tomcat-9.0.80/

# Modify permissions
chmod -R 777 *

# Start Tomcat
cd bin/
./startup.sh

# Return to the initial directory
cd /mnt/
