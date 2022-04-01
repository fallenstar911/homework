FROM ubuntu:20.04
RUN apt update -y && apt install maven -y && apt install tomcat9 -y && apt install git -y
RUN git clone https://github.com/koddas/war-web-project.git
RUN cd /target/
RUN maven package

