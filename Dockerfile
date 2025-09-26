FROM alpine:latest

ARG JAR_FILE=./source-0.0.1-SNAPSHOT.jar
ARG repo_path

# OpenJDK 17 설치
RUN apk add --no-cache openjdk17-jre

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]