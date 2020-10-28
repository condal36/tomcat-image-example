From centos:7

MAINTAINER ccl_linc
#Neither the JAVA_HOME nor the JRE_HOME environment variable is defined
#At least one of these environment variable is needed to run this program
RUN yum install -y wget

RUN cd /

ADD jdk-15.0.1_linux-x64_bin.tar.gz /


RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.106/bin/apache-tomcat-7.0.106.tar.gz
RUN tar zxvf apache-tomcat-7.0.106.tar.gz
ENV JAVA_HOME=/jdk-15.0.1
ENV PATH=$PATH:/jdk-15.0.1/bin
CMD ["/apache-tomcat-7.0.106/bin/catalina.sh","run"]

EXPOSE 8080
