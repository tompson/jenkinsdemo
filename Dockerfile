FROM openjdk:8-jre

COPY build/libs/jenkinsdemo-0.0.1-SNAPSHOT.jar /bootapp.jar

EXPOSE 8080

CMD ["java", "-jar", "-Djava.security.egd=file:/dev/urandom", "bootapp.jar"]