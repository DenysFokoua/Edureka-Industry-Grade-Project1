FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk wget
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN mv /tmp/apache-tomcat-8.5.55 /opt/tomcat
COPY '**/*.war' /opt/tomcat/webapps/
#COPY 'ABCtechnologies-1.0.war' /opt/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
