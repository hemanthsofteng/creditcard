FROM ubuntu:23.04
ENV JAVA_HOME=/u01/middleware/jdk-11.0.2
ENV TOMCAT_HOME=/u01/middleware/apache-tomcat-9.0.85
ENV PATH=$PATH:$JAVA_HOME/bin:$TOMCAT_HOME/bin

RUN mkdir -p /u01/middleware
WORKDIR /u01/middleware
ADD https://builds.openlogic.com/downloadJDK/openlogic-openjdk/8u402-b06/openlogic-openjdk-8u402-b06-linux-x64.tar.gz .
RUN tar -xvzf openlogic-openjdk-8u402-b06-linux-x64.tar.gz
RUN rm openlogic-openjdk-8u402-b06-linux-x64.tar.gz

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.85.tar.gz
RUN rm apache-tomcat-9.0.85.tar.gz

COPY target/creditcard.war ${TOMCAT_HOME}/webapps
COPY run.sh /tmp
RUN chmod u+x /tmp/run.sh
ENTRYPOINT [ "/tmp/run.sh" ]