FROM tomcat:8.0
MAINTAINER john
COPY sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
