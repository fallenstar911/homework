FROM tomcat:9.0.62-jdk11-temurin-focal
RUN apt update -y && apt install git -y && apt install maven -y
WORKDIR /opt/
RUN git clone https://github.com/koddas/war-web-project.git
WORKDIR war-web-project/
RUN mvn package
RUN cp /opt/war-web-project/target/wwp-1.0.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
11111