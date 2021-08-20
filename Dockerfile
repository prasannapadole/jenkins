FROM kulbhushanmayer/tomcat:8.5.61
COPY target/devops.war /opt/app/apache-tomcat-8.5.61/webapps/devops.war
