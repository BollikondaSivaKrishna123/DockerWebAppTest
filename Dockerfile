# Use the official Tomcat base image
FROM tomcat:9-jdk17

# Remove the default web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the webapps directory
COPY target/DockerTestWebApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat is running on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

