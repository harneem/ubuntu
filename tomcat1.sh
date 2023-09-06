#!/bin/bash
tomcat_version="9.0.79" # Tomcat installation version
Tomcat_install_dir="/home/ubuntu/tomcat9" # Change this to the desired installation directory
url="https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.79/bin/apache-tomcat-9.0.79.tar.gz"
#Donloading tomcat version
wget $url
#Unzing the downloaded tomcat
tar -xvzf apache-tomcat-${tomcat_version}.tar.gz
#renaming the tomcat
mv apache-tomcat-${tomcat_version} tomcat9
#removing the downloaded the zip file
rm -rf apache-tomcat-${tomcat_version}.tar.gz
# Start Tomcat
echo "Starting Tomcat..."
"$Tomcat_install_dir"/bin/startup.sh
# Print deployment information
echo "Tomcat version $tomcat_version has been deployed to $Tomcat_install_dir"
echo "Access the Tomcat Manager at http://public_Ip:8080/manager"
