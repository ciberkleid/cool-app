# ENTRYPOINT supports Ctrl+C, JAVA_OPTS, and command line args
#   e.g. docker run -p 8081:8081 -e "JAVA_OPTS=-Ddebug -Xmx128m" cool-app --server.port=8081
# In contrast:
#ENTRYPOINT java -jar app.jar --> Ctrl+C, JAVA_OPTS, command args ignored
#ENTRYPOINT ["java", "-jar"]
#CMD ["app.jar"] --> JAVA_OPTS ignored, command args throw error
#ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar app.jar ${0} ${@}"] --> Ctrl+C ignored

FROM adoptopenjdk:11-jre-hotspot
COPY target/*.jar app.jar
ENTRYPOINT ["sh", "-c", "exec java ${JAVA_OPTS} -jar app.jar ${0} ${@}"]
