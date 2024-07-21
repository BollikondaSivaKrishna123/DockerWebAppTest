
FROM tomcat:10.1-jre11
# Copy the packaged jar file into the container at /app
COPY target/DockerTestWebApp.war /usr/local/tomcat/webapp/my-docker-webapp.war
# Expose the port the application runs on
EXPOSE 8080
