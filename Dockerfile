FROM openjdk
WORKDIR /app
COPY target/demoapplication ./
EXPOSE 9001
CMD ["java", "-jar", "-Dspring.profiles.active=local", "demoapplication"]