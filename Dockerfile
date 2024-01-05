FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  
EXPOSE 8080
CMD ["catalina.sh", "run"]
