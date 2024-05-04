FROM nginx:alpine
COPY dist/your-angular-app /usr/share/nginx/html
FROM openjdk:11-jre-slim
COPY target/your-spring-boot-app.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
