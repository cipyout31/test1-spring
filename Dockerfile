FROM eclipse-temurin:17-jre-alpine   # you need to choose by java version here i take 17 so i put java version as 17
EXPOSE 8080              # here we need to take port (anyone) but container port need to be (8080) only
ENV APP_HOME /usr/src/app
COPY target/*.jar $APP_HOME/app.jar
WORKDIR $APP_HOME
CMD ["java", "-jar", "app.jar"]
