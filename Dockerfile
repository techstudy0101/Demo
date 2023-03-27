FROM openjdk
WORKDIR /app
COPY target/demoapplication.jar ./
EXPOSE 9005
RUN chmod 777 demoapplication.jar
CMD ["java", "-jar", "-Dspring.profiles.active=local", "demoapplication.jar"]