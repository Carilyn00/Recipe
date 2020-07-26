FROM tomcat:8-jdk

ADD target/recipeWebApp.war /usr/local/tomcat/webapps/recipeWebApp.war
