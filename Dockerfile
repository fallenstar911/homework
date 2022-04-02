#FROM ubuntu:20.04
FROM ubuntu:latest
RUN apt update -y && apt install tomcat9 -y && apt install git -y && apt install default-jdk -y && apt install maven -y
WORKDIR opt/
EXPOSE 8080
RUN git clone https://github.com/koddas/war-web-project.git
WORKDIR war-web-project/
RUN mvn package
RUN cp /opt/war-web-project/target/wwp-1.0.0.war /var/lib/tomcat9/webapps/
CMD /bin/bash
#RUN "service" "tomcat" "restart"
