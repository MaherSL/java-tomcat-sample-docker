FROM tomcat:8.0
ADD ./target/*.war /usr/local/tomcat/weba2pps/
EXPOSE 8080
CMD ["catalina.sh", "run"]