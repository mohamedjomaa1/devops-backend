# MySQL Stage
FROM mysql:latest AS mysql
ADD init.sql /docker-entrypoint-initdb.d/
EXPOSE 3306

# Spring Boot Stage
FROM openjdk:17-jdk AS backend
COPY target/backend-*.jar app.jar
EXPOSE 8082
CMD ["java", "-jar", "/app/backend.jar"]

