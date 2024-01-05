FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:root@13.126.68.83/var/lib/jenkins/workspace/job/target/studentapp-2.5-SNAPSHOT.war
EXPOSE 8088
CMD ["catalina.sh", "run"]
