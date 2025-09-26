FROM docker.io/openjdk:17-jre-slim

ARG JAR_FILE=./source-0.0.1-SNAPSHOT.jar
ARG repo_path

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]