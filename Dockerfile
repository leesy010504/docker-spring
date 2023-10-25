FROM openjdk:11-jdk
LABEL maintainer="leesy010504"
ARG JAR_FILE=build/libs/hello-spring-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} docker-spring.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-spring.jar"]
