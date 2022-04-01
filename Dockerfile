FROM ubuntu:20.04
RUN apt update -y && apt install tomcat9 -y && apt install git -y && apt install default-jdk -y && apt install maven -y
WORKDIR opt/
RUN git clone https://github.com/koddas/war-web-project.git
WORKDIR war-web-project/
RUN mvn package

