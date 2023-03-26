FROM openjdk
WORKDIR /app
COPY /private/var/root/.jenkins/workspace/v1/target/demoapplication ./
EXPOSE 9001
CMD ["java", "-jar", "-Dspring.profiles.active=local", "demoapplication"]