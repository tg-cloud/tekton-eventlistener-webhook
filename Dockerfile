FROM openjdk:17-jre-slim

ARG JAR_FILE=./tekton-test-springboot.jar
ARG repo_path

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]