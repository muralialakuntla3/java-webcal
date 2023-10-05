# base image
FROM centos:7 AS build

# install java

RUN yum -y install java-11-openjdk

# working directory

RUN mkdir /webcal
WORKDIR /webcal

# application code 

COPY . /webcal

# application build

RUN yum -y install maven
RUN mvn package

# application deployment

FROM tomcat

# copy war file

COPY --from=build /webcal/target/WebAppCal-1.3.5 /usr/local/tomcat/webapps
