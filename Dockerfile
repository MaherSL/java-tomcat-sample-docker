FROM tomcat:8.0
COPY ./*/*.war /usr/local/tomcat/weba2pps/
EXPOSE 8080
CMD ["catalina.sh", "run"]