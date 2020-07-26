FROM tomcat:8-jdk8

ADD target/recipeWebApp.war /usr/local/tomcat/webapps/recipeWebApp.war
