FROM openjdk
WORKDIR /app
COPY target/ch5-0.0.1-SNAPSHOT.jar ./
EXPOSE 9001
CMD ["java", "-jar", "-Dspring.profiles.active=local", "demo-0.0.1-SNAPSHOT.jar"]