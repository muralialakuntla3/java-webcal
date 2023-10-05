# java-webcal
## install dependencies
  - sudo apt-get update
  - sudo apt install openjdk-11* -y
  - install wget if not--sudo apt install wget
  - goto https://tomcat.apache.org/ --------choose your tomcat version and copy the binary .tar.gz link
  - wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.tar.gz
  - tar xvf apache-tomcat-7.0.94.tar.gz
  -  ~/apache-tomcat-7.0.94/bin/startup.sh
## now clone the code and install build tool
  - git clone -b project-1 https://github.com/muralialakuntla3/java-webcal.git
  - sudo apt install maven -y ---------it's java project so we need maven to build
## build the application
  - cd java-wecal
  - mvn validate
  - mvn clean ----- removes target directory which contains artifacts
  - mvn compile ----- creates target directory where artifacts going to store
  - mvn test 
  - mvn package ---- creates deployable artifacts in target directory as .jar or .war 
## hosting the artifacts
  - cd apache-tomcat-7.0.94/webapps
  - mkdir java-webcal
  - cd ~/
  - cd java-webcal/target/
  - sudo cp -rf WebAppCal-1.3.5/* /home/ubuntu/apache-tomcat-7.0.94/webapps/java-webcal/
  - cd
  - ~/apache-tomcat-7.0.94/bin/startup.sh
## checking the application
  - goto browser
  - pub-ip:8080/java-webcal
  - this will load your application
