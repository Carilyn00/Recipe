FROM tomcat:9-jre8

COPY target/recipeWebApp.war /usr/local/tomcat/webapps/recipeWebApp.war
EXPOSE 8090
