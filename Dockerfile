FROM openjdk:8-jre-alpine
WORKDIR /tmp
COPY target/cool-app-1.0.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
