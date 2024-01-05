FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin@52.207.131.83:8081/repository/nexus_repo/http://52.207.131.83:8081/repository/nexus_repo/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20240105.114119-1.war
EXPOSE 8088
CMD ["catalina.sh", "run"]
