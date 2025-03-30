FROM openjdk:17-ea-11-jdk-slim
WORKDIR /app
COPY build/libs/config-0.0.1-SNAPSHOT.jar config-server.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "config-server.jar"]