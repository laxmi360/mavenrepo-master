FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
COPY /var/lib/jenkins/workspace/job/target/studentapp-2.5-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8088
CMD ["catalina.sh", "run"]
