FROM tomcat:8-jre8

ADD target/recipeWebApp.war /usr/local/tomcat/webapps/recipeWebApp.war
