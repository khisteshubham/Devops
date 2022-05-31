FROM ubuntu:18.04

LABEL maintainer="Shubhamkhiste"

RUN apt-get update && apt-get install wget unzip -y

WORKDIR /mnt

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.zip && unzip apache-tomcat-9.0.62.zip && apt install default-jdk -y

RUN cd apache-tomcat-9.0.62 && chmod -R 755 bin

ADD gameoflife.war /mnt/apache-tomcat-9.0.62/webapps/

EXPOSE 8080

CMD ["apache-tomcat-9.0.62/bin/catalina.sh", "run"]

