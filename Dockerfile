FROM tomcat:8-jre8

DOCKER_HOST tcp://172.31.6.240:2375

ADD target/recipeWebApp.war /usr/local/tomcat/webapps/recipeWebApp.war
