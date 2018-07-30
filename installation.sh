#!/bin/sh
#installing java
 
java -version
if [ $? -eq 0 ]
then 
echo "java already installed"
else
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
echo "Java is installed"
fi

#installing maven 

mvn --version
if [ $? -eq 0 ]
then
echo "maven already installed"
else
cd /opt/
wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar -zxf apache-maven-3.0.4-bin.tar.gz
sudo mv apache-maven-3.3.9 maven 
sudo nano /etc/profile.d/mavenenv.sh
export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
sudo chmod +x /etc/profile.d/mavenenv.sh
sudo source /etc/profile.d/mavenenv.sh
echo "maven installed"
fi

#installing git
 
git --version
if [ $? -eq 0 ]
then 
echo "git already installed"

else 
sudo apt-get update
sudo apt-get install git
git config --global user.name "velakaturisuresh"
git config --global user.email "velakaturisuresh@gmail.com"

echo "git installed"
fi 


