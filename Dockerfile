FROM openjdk:8-jdk-alpine

#install mycat
ADD http://dl.mycat.io/1.6-RELEASE/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz /usr/local
RUN cd /usr/local && tar -zxvf Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz && ls -lna

VOLUME /usr/local/mycat/conf
EXPOSE 8066 9066
ENTRYPOINT ["/usr/local/mycat/bin/mycat","console"]
